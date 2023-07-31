/*
Instruction Fetch Stage
*/

module IF(
    input logic clk, n_rst,

    input logic bt, jt, irq, stall, reset, RF_exp, 
    input logic[31:0] rd1, 
    input logic[31:0] id, 
    input logic[31:0] pc_offset,

    output logic[31:0] pc,
    output logic[31:0] id_RF, pc_RF
);

localparam BNE_XP = 32'h77df0000;
localparam NOP = 32'h83fff800; 

localparam Reset = 32'h80000000; // address to go to during reset
localparam Illop = 32'h80000004;  // during illegal op
localparam XAdr  = 32'h80000008; // during interrupts 

logic[31:0] next_pc;
logic[31:0] next_id_RF;  

logic[31:0] pc_incr;

assign pc_incr = pc + 32'd4;
//assign pc_incr = 'b0; 

always_ff @(posedge clk, negedge n_rst) begin: REG_LOGIC_WITH_STALLS
    if(~n_rst) begin
        pc <= 'b0; 
        id_RF <= NOP; 
        pc_RF <= 'b0; 
    end
    else begin
        pc <= stall ? pc : next_pc;
        id_RF <= stall ? id_RF : next_id_RF; 
        pc_RF <= stall ? pc_RF : {pc[31], pc_incr[30:0]}; 
    end
end

always_comb begin: NEXT_PC_LOGIC
    // default
    next_pc = {pc[31], pc_incr[30:0]}; // cannot increment into supervisor bit 

    if(reset)
        next_pc = Reset; 
    else if(RF_exp)
        next_pc = Illop; 
    else if(jt) begin
        next_pc = {pc[31] & rd1[31], rd1[30:0]}; 
        //next_pc[31] = pc[31] & rd1[31]; // can only reset the supervisor bit 
    end
    else if(bt) 
        next_pc = {pc[31], pc_offset[30:0]}; 
    else if(irq) 
        next_pc = XAdr; 
end 

always_comb begin: ID_RF_LOGIC
    // default 
    next_id_RF = id; 

    if(bt || jt || RF_exp) begin
        next_id_RF = NOP; 
    end
    else if(irq) begin
        next_id_RF = BNE_XP; 
    end
end




endmodule 