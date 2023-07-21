module cpu (
    input logic clk, n_rst,
    input logic RESET, IRQ

    // MEM INPUTS
    input logic[31:0] ID, // instruc mem data
    input logic[31:0] MRD, // mem data 

    // MEM OUTPUTS
    output logic[31:0] IA, // instruc address (word alinged - 4B)
    output logic[31:0] MWD, // mem write data
    output logic[31:0] MA,
    output logic MWR, MOE
);

// CTRL Signals
logic[5:0] ALUFN;
logic ASEL, BSEL;
logic[2:0] PCSEL; 
logic RA2SEL;
logic WASEL;
logic[1:0] WDSEL;
logic WERF;

logic Z; 
logic[5:0] op_code; 


control CRTL(
    .op_code (op_code),

    // data path
    .Z(Z), 
    
    // external 
    .RESET(RESET), .IRQ(IRQ), 

    .ALUFN(ALUFN),
    .ASEL(ASEL), .BSEL(BSEL),
    .MOE(MOE), .MWR(MWR), 
    .PCSEL(PCSEL), 
    .RA2SEL(RA2SEL),
    .WASEL(WASEL),
    .WDSEL(WDSEL),
    .WERF(WERF)
);


datapath DATAPATH(
    .clk(clk), .n_rst(n_rst), 
    
    .RESET(RESET),

    // CTRL INPUTS
    .ALUFN(ALUFN),
    .ASEL(ASEL), .BSEL(BSEL),
    .PCSEL(PCSEL), 
    .RA2SEL(RA2SEL),
    .WASEL(WASEL),
    .WDSEL(WDSEL),
    .WERF(WERF)

    // CTRL OUTPUTS
    .Z(Z) 
    .op_code(op_code),

    // MEM INPUTS
    .ID(ID), // instruc mem data
    .MRD(MRD), // mem data 


    // MEM OUTPUTS
    .IA(IA), // instruc address (word alinged - 4B)
    .MWD(MWD), // mem write data
    .MA(MA),
);









endmodule 