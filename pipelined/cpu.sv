module cpu (
    input logic clk, n_rst,
    input logic RESET, IRQ,

    // MEM INPUTS
    input logic[31:0] ID, // instruc mem data
    input logic[31:0] MRD, // mem data 

    // MEM OUTPUTS
    output logic[31:0] IA, // instruc address (word alinged - 4B)
    output logic[31:0] MWD, // mem write data
    output logic[31:0] MA,
    output logic MWR, MOE
);

logic bt, jt, stall, RF_exp; 
logic[31:0] rd1, rd2; 
logic[31:0] pc_offset; 

logic[31:0] id_RF, pc_RF; 

logic[31:0] y, pc_MEM, id_MEM, y_MEM, pc_WB, id_WB, wd, y_WB; 
logic[31:0] pc_ALU, id_ALU, a_ALU, b_ALU, d_ALU, d_MEM; 
logic[4:0] ra1, ra2, wa;

logic WERF; 

assign MOE = 1'b1; 
assign MA = y_MEM; 
assign MWD = d_MEM; 

IF INSTRUCTION_FETCH(
    .clk(clk), .n_rst(n_rst),

    .bt(bt), .jt(jt), .irq(IRQ), .stall(stall), .reset(RESET), .RF_exp(RF_exp), 
    .rd1(rd1), 
    .id(ID), 
    .pc_offset(pc_offset),

    .pc(IA),
    .id_RF(id_RF), .pc_RF(pc_RF)
);


RF REGISTER_FILE_STAGE(.*);

ALU ALU(.*); 

MEM MEMORY_STAGE(.*);

WB WRITE_BACK(.*);

register_file REG_FILE(
    .clk(clk), .n_rst(n_rst),
    .RA1(ra1), .RA2(ra2), .WA(wa),
    .WD(wd),
    .WE(WERF),

    .RD1(rd1), .RD2(rd2)
);

endmodule 


