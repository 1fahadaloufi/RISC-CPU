module datapath (
    input logic clk, n_rst, 
    
    input logic RESET,

    // CTRL INPUTS
    input logic[5:0] ALUFN,
    input logic ASEL, BSEL, 
    input logic[2:0] PCSEL, 
    input logic RA2SEL,
    input logic WASEL,
    input logic[1:0] WDSEL 
    input logic WERF,

    // CTRL OUTPUTS
    output logic Z, 

    // MEM INPUTS
    input logic[31:0] ID, // instruc mem data
    input logic[31:0] MRD, // mem data 


    // MEM OUTPUTS
    output logic[31:0] IA, // instruc address (word alinged - 4B)
    output logic[31:0] MWD, // mem write data
    output logic[31:0] MA,

);

localparam Reset = 32'h80000000; // address to go to during reset
localparam Illop = 32'h80000004;  // during illegal op
localparam XAdr  = 32'h80000008; // during interrupts 

// deocding
logic[4:0] Ra, Rb, Rc; 
logic[5:0] op_code; 
logic[31:0] SXT_C ; // sign extended constant in op code


// program counter
logic[31:0] pc; 
logic[31:0] pc_incr; 
logic[31:0] pc_offset; 
logic[31:0] JT; 

// reg file
logic[4:0] RA1, RA2, WA;
logic[31:0] WD; 
logic[31:0] RD1, RD2; 

// alu
logic[31:0] A, B; 
logic[31:0] Y; 


// Decoding Instruction
assign Ra = ID[20:16]
assign op_code = ID[31:26];
assign Rb = ID[15:11];
assign Rc = ID[25:21]; 
assign C = ID[15:0]; 

// sign extend the constant
assign SXT_C = {{16{C[15]}}, C}; 


// PC Logic
assign pc_incr = pc + 4; 
assign pc_offset = pc + 4 + (SXT_C << 2); 
assign JT = {pc[31] & RD1[31], RD1[30:2], 2'b00}; 

always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst)
        pc <= 'b0; 
    else begin
        if(RESET)
            pc <= Reset; 
        else begin
            case(PCSEL)
                3'd0: pc <= {pc[31], pc_incr[30:0]}; 
                3'd1: pc <= {pc[31], pc_offset[30:0]}
                3'd2: pc <= JT;
                3'd3: pc <= Illop; 
                3'd4: pc <= XAdr; 
            endcase 
        end
    end
end


// Register File Logic
register_file REG_FILE(.RA1(RA1), .RA2(RA2), .WA(WA), .WD(WD),
                       .RD1(RD1), .RD2(RD2), .WE(WERF)); 
assign RA1 = Ra; 
assign RA2 = RA2SEL ? Rc : Rb; 
assign WA = WASEL ? 5'd30 : Rc; 
assign WD = WDSEL == 2'd2 ? MRD :
            (WDSEL == 2'd1 ? Y :
            (WDSEL == 2'd0 ? pc + 32'd4 : 'b0 ) )

assign Z = ~(|RD1); 
assign MWD = RD2; 


// ALU Logic
alu ALU(.A(A), .B(B), .Y(Y), .FN(ALUFN)); 
assign A = ASEL ? pc_offset : RD1; 
assign B = BSEL ? SXT_C : RD2; 
assign MA = Y; 





    
endmodule