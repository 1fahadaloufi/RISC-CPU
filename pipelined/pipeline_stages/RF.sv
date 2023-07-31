/*
Register File Stage 
*/

module RF(
    input clk, n_rst, 

    // IF Stage 
    input logic[31:0] pc_RF, id_RF, 

    //ALU Stage 
    input logic[31:0] y, 

    // MEM Stage 
    input logic[31:0] pc_MEM, id_MEM, y_MEM,

    // WB stage
    input logic[31:0] pc_WB, id_WB, wd,

    // REG File
    input logic[31:0] rd1, rd2, 


    output logic[31:0] pc_ALU, id_ALU, 
    output logic stall, 
    output logic[31:0] a_ALU, b_ALU, d_ALU, 

    // REG File
    output logic[4:0] ra1, ra2,

    output logic bt, jt, RF_exp, 

    output logic[31:0] pc_offset
);

localparam BNE_XP = 32'h77df0000;
localparam NOP = 32'h83fff800; 

logic[31:0] next_id_ALU, next_a_ALU, next_b_ALU; 
logic[31:0] rd1_bypass, rd2_bypass; 
logic z, ASEL, BSEL, RA2SEL; 
logic[2:0] PCSEL; 

// deocding
logic[5:0] op_code; 
logic[4:0] Ra, Rb, Rc; 
logic[15:0] C; 
logic[31:0] SXT_C ; // sign extended constant in op code


// instantiate control module for ASEL and BSEL
control CRTL(
    .op_code (op_code),

    .Z(z),
    .RESET(1'b0),
    .IRQ(1'b0), 
    
    .ASEL(ASEL), .BSEL(BSEL), 
    .RA2SEL(RA2SEL), 
    .PCSEL(PCSEL)
);

// Decoding Instruction
assign Ra = id_RF[20:16];
assign op_code = id_RF[31:26];
assign Rb = id_RF[15:11];
assign Rc = id_RF[25:21]; 
assign C = id_RF[15:0]; 

// sign extend the constant
assign SXT_C = {{16{C[15]}}, C}; 

assign z = ~(|rd1_bypass); 

assign pc_offset = pc_RF + (SXT_C << 2); 

assign jt = op_code == 6'h1B ? 1'b1 : 1'b0; 
assign bt = (op_code == 6'h1c && z) || (op_code == 6'h1d && ~z) ? 1'b1 : 1'b0; 

assign next_a_ALU = ASEL ? pc_offset : rd1_bypass; 
assign next_b_ALU = BSEL ? SXT_C : rd2_bypass; 

assign ra1 = Ra; 
assign ra2 = RA2SEL ? Rc : Rb; 

assign RF_exp = (PCSEL == 3'b011) ? 1'b1 : 1'b0; 

always_ff @(posedge clk, negedge n_rst) begin: REG_LOGIC
    if(~n_rst) begin
        pc_ALU <= 'b0; 
        id_ALU <= NOP; 
        a_ALU <= 'b0; 
        b_ALU <= 'b0; 
        d_ALU <= 'b0; 
    end
    else begin
        pc_ALU <= pc_RF; 
        id_ALU <= next_id_ALU; 
        a_ALU <= next_a_ALU; 
        b_ALU <= next_b_ALU; 
        d_ALU <= rd2_bypass; 
    end 
end

always_comb begin: STALL_LOGIC 
    rd1_bypass = rd1; 
    rd2_bypass = rd2; 
    stall = 1'b0; 

    
    if(op_code != 6'd0) begin

        // compare Ra of curr instr with Rc of prev instructions (unless they are a ST)
        // first check w/ ALU stage 
        if(Ra == id_ALU[25:21] && Ra != 5'd31) begin
            // stall if it is a LD or LDR instr
            if(id_ALU[31:26] == 6'h18 || id_ALU[31:26] == 6'h1f) begin
                stall = 1'b1; 
            end  
            else if(id_ALU[31:26] != 6'h19) begin // check it is not an ST instruction
                // check BEQ, BNE, JMP and use pc + 4 value
                if(id_ALU[31:26] == 6'h1c || id_ALU[31:26] == 6'h1d || id_ALU[31:26] == 6'h1b)
                    rd1_bypass = pc_ALU; 
                else begin // use Y field of ALU
                    rd1_bypass = y; 
                end
            end
        end // check w/ MEM stage
        else if(Ra == id_MEM[25:21] && Ra != 5'd31) begin 
            // stall if it is a LD or LDR instr
            if(id_MEM[31:26] == 6'h18 || id_MEM[31:26] == 6'h1f) begin
                stall = 1'b1; 
            end  
            else if(id_MEM[31:26] != 6'h19) begin // check it is not an ST instruction
                // check BEQ, BNE, JMP and use pc + 4 vMEMe
                if(id_MEM[31:26] == 6'h1c || id_MEM[31:26] == 6'h1d || id_MEM[31:26] == 6'h1b)
                    rd1_bypass = pc_MEM; 
                else begin // use Y field of ALU
                    rd1_bypass = y_MEM; 
                end
            end
        end // check w/ WB stage 
        else if(Ra == id_WB[25:21] && Ra != 5'd31) begin 
            if(id_WB[31:26] != 6'h19) begin // check it is not an ST instruction
                // check BEQ, BNE, JMP and use pc + 4
                if(id_WB[31:26] == 6'h1c || id_WB[31:26] == 6'h1d || id_WB[31:26] == 6'h1b)
                    rd1_bypass = pc_WB; 
                else begin // use Y field of ALU
                    rd1_bypass = wd; 
                end
            end
        end

        // compare Rb if it is a reg/reg op 
        if(op_code[5:4] == 2'b10) begin
            // first check w/ ALU stage 
            if(Rb == id_ALU[25:21] && Rb != 5'd31) begin
                // stall if it is a LD or LDR instr
                if(id_ALU[31:26] == 6'h18 || id_ALU[31:26] == 6'h1f) begin
                    stall = 1'b1; 
                end  
                else if(id_ALU[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 value
                    if(id_ALU[31:26] == 6'h1c || id_ALU[31:26] == 6'h1d || id_ALU[31:26] == 6'h1b)
                        rd2_bypass = pc_ALU; 
                    else begin // use Y field of ALU
                        rd2_bypass = y; 
                    end
                end
            end // check w/ MEM stage
            else if(Rb == id_MEM[25:21] && Rb != 5'd31) begin 
                // stall if it is a LD or LDR instr
                if(id_MEM[31:26] == 6'h18 || id_MEM[31:26] == 6'h1f) begin
                    stall = 1'b1; 
                end  
                else if(id_MEM[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 vMEMe
                    if(id_MEM[31:26] == 6'h1c || id_MEM[31:26] == 6'h1d || id_MEM[31:26] == 6'h1b)
                        rd2_bypass = pc_MEM; 
                    else begin // use Y field of ALU
                        rd2_bypass = y_MEM; 
                    end
                end
            end // check w/ WB stage 
            else if(Rb == id_WB[25:21] && Rb != 5'd31) begin 
                if(id_WB[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 
                    if(id_WB[31:26] == 6'h1c || id_WB[31:26] == 6'h1d || id_WB[31:26] == 6'h1b)
                        rd2_bypass = pc_WB; 
                    else begin // use Y field of ALU
                        rd2_bypass = wd; 
                    end
                end
            end
        end

        // compare Rc in case of ST instr
        if(op_code == 6'h19) begin
            // first check w/ ALU stage 
            if(Rc == id_ALU[25:21] && Rc != 5'd31) begin
                // stall if it is a LD or LDR instr
                if(id_ALU[31:26] == 6'h18 || id_ALU[31:26] == 6'h1f) begin
                    stall = 1'b1; 
                end  
                else if(id_ALU[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 value
                    if(id_ALU[31:26] == 6'h1c || id_ALU[31:26] == 6'h1d || id_ALU[31:26] == 6'h1b)
                        rd2_bypass = pc_ALU; 
                    else begin // use Y field of ALU
                        rd2_bypass = y; 
                    end
                end
            end // check w/ MEM stage
            else if(Rc == id_MEM[25:21] && Rc != 5'd31) begin 
                // stall if it is a LD or LDR instr
                if(id_MEM[31:26] == 6'h18 || id_MEM[31:26] == 6'h1f) begin
                    stall = 1'b1; 
                end  
                else if(id_MEM[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 vMEMe
                    if(id_MEM[31:26] == 6'h1c || id_MEM[31:26] == 6'h1d || id_MEM[31:26] == 6'h1b)
                        rd2_bypass = pc_MEM; 
                    else begin // use Y field of ALU
                        rd2_bypass = y_MEM; 
                    end
                end
            end // check w/ WB stage 
            else if(Rc == id_WB[25:21] && Rc != 5'd31) begin 
                if(id_WB[31:26] != 6'h19) begin // check it is not an ST instruction
                    // check BEQ, BNE, JMP and use pc + 4 vWBe
                    if(id_WB[31:26] == 6'h1c || id_WB[31:26] == 6'h1d || id_WB[31:26] == 6'h1b)
                        rd2_bypass = pc_WB; 
                    else begin // use Y field of ALU
                        rd2_bypass = wd; 
                    end
                end
            end
        end 
    end 
end

always_comb begin: ID_ALU_LOGIC
    next_id_ALU = id_RF; 

    if(stall)
        next_id_ALU = NOP; 
    else if(RF_exp)
        next_id_ALU = BNE_XP; 
end


endmodule