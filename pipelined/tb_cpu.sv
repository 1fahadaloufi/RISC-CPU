`timescale 1ns/100ps

module tb_cpu();

localparam CLK_PERIOD = 15; // 66.66 MHz 

logic tb_clk, tb_n_rst;
logic tb_RESET, tb_IRQ; 
logic[31:0] tb_ID, tb_MRD, tb_IA, tb_MA, tb_MWD; 

logic[1023:0] test_case;
integer test_num; 

always begin
    tb_clk = 1'b0; 
    #(CLK_PERIOD / 2.0);
    tb_clk = 1'b1; 
    #(CLK_PERIOD / 2.0); 
end


// for testing the CPU: loaded w/ bubble-sort program
cpu_mem DUT (
    .clk(tb_clk), .n_rst(tb_n_rst),

    .RESET(tb_RESET), .IRQ(tb_IRQ), 

    .ID(tb_ID), .MRD(tb_MRD), .IA(tb_IA), .MA(tb_MA), .MWD(tb_MWD)
);


initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
end

initial begin

    tb_n_rst = 1'b1; 
    tb_RESET = 1'b0;
    tb_IRQ = 1'b0; 

    #(0.1); 
    tb_n_rst = 1'b0;
    @(posedge tb_clk);
    #(0.1); 
    tb_n_rst = 1'b1; 

    @(posedge tb_clk); 
    repeat (400) @(posedge tb_clk);

    @(posedge tb_clk); 

    $finish; 
end

endmodule 


module cpu_mem (
    input logic clk, n_rst,

    input logic RESET, IRQ, 

    output logic[31:0] ID, MRD, IA, MA, MWD
);

logic MWR, MOE; 


cpu CPU(
    .clk(clk), .n_rst(n_rst),
    .RESET(RESET), .IRQ(IRQ),

    // MEM INPUTS
    .ID(ID), // instruc mem data
    .MRD(MRD), // mem data 

    // MEM OUTPUTS
    .IA(IA), // instruc address (word alinged - 4B)
    .MWD(MWD), // mem write data
    .MA(MA),
    .MWR(MWR), .MOE(MOE)
); 


main_memory MEM(
    .clk(clk), .n_rst(n_rst),

    
    // MEM INPUTS
    .IA(IA), // instruc address (word alinged - 4B)
    .MWD(MWD), // mem write data
    .MA(MA),
    .MWR(MWR), .MOE(MOE),

    // MEM OUTPTUS
    .ID(ID), // instruc mem data
    .MRD(MRD) // mem data 

); 

endmodule 


/*
Build memory out of registers for testing of the CPU. Essentially another register file w/ special reset. 
On reset, the register will contain program instructions and any unused location will yield 0s.
*/

module main_memory (
    input logic clk, n_rst,

    input logic[31:0] IA,
    output logic[31:0] ID,

    input logic MWR, MOE,
    
    input logic[31:0] MA,
    output logic[31:0] MRD,

    input logic[31:0] MWD
);


logic[31:0] reg_outputs[31:0];
logic[31:0] reset_val[31:0];
logic[31:0] MA_dec; 
logic[31:0] MRD_reg; 


/* 
initialize memory w/ bubble sort program
*/
always_comb begin
    for(integer k = 0; k < 32; k += 1) begin
        reset_val[k] = 'b0; 
    end


    // reset_val[0] = 32'hc01f0000; //		CMOVE(0, R0)
    // reset_val[1] = 32'hc03f0002; //		CMOVE(2, R1)
    // reset_val[2] = 32'hc0000005; //	    loop:	ADDC(R0, 5, R0)
    // reset_val[3] = 32'hc4210001; //	    SUBC(R1, 1, R1)
    // reset_val[4] = 32'h77e1fffd; //	    BNE(R1, loop, R31)
    // reset_val[5] = 32'h641f0020; //		ST(R0, 32, R31)
    // reset_val[6] = 32'h605f0020; //	    LD(R31, 32, R2)

    reset_val[0] = 32'hc03f0003; // CMOVE(3, R1)
    reset_val[5] = 32'h8021f800; // MOVE(R1, R1)
    reset_val[0] = 32'h73ff0003; // BR(STEP1)
    reset_val[1] = 32'h000000a; // A[0]
    reset_val[2] = 32'h0000038; // A[1]
    reset_val[3] = 32'h0;       // A[2]
    reset_val[4] = 32'hc03f0003; // STEP1:	CMOVE(3, R1)
    reset_val[5] = 32'hc05f0000; //  STEP2:	CMOVE(0, R2)
    reset_val[6] = 32'hc01f0000; // CMOVE(0, R0)
    reset_val[7] = 32'hc0000001; //	STEP3:	ADDC(R0, 1, R0)
    reset_val[8] = 32'h94600800; // CMPLT(R0, R1, R3)
    reset_val[9] = 32'h73e30009; //	BEQ(R3, STEP5, R31)
    reset_val[10] = 32'hf0800002; // SHLC(R0, 2, R4)
    reset_val[11] = 32'h60a40004; // LD(R4, 4, R5)
    reset_val[12] = 32'h60c40000; // LD(R4, 0, R6)
    reset_val[13] = 32'h98662800; // STEP4:	CMPLE(R6, R5, R3)
    reset_val[14] = 32'h77e3fff8; // BNE(R3, STEP3, R31)
    reset_val[15] = 32'h64c40004; // ST(R6, 4, R4)
    reset_val[16] = 32'h64a40000; // ST(R5, 0, R4)
    reset_val[17] = 32'hc0400000; // ADDC(R0, 0, R2)
    reset_val[18] = 32'h73fffff4; // BR(STEP3)
    reset_val[19] = 32'hc0220000; // STEP5:	ADDC(R2, 0, R1)
    reset_val[20] = 32'h77e1fff0; //	BNE(R1, STEP2, R31)

end


genvar i; 
generate 
    for(i = 0; i < 32; i += 1)
        mem_reg REGX(.clk(clk), .n_rst(n_rst), .load_en(MWR & MA_dec[i]), .load_data(MWD), .data_out(reg_outputs[i]), .reset_val(reset_val[i])); 
endgenerate 


always_comb begin: ID_LOGIC
    ID = 'b0; 

    if(IA >> 2 < 32'd32) begin
        ID = reg_outputs[IA >> 2]; 
    end
end


always_comb begin: MRD_LOGIC
    MRD_reg = 'b0; 

    if(MA >> 2 < 32'd32)
        MRD_reg = reg_outputs[MA >> 2];
end

always_comb begin: MA_DECODER_LOGIC
    MA_dec = 'b0; 

    if(MA >> 2 < 32'd32)
        MA_dec[MA >> 2] = 1'b1; 
end


always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst) begin
        MRD <= 'b0; 
    end
    else begin
        MRD <= MRD_reg; 
    end
end
endmodule


module mem_reg(
    input logic clk, n_rst, 
    input logic[31:0] load_data, 
    input logic load_en, 
    input logic[31:0] reset_val,

    output logic[31:0] data_out
);


always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst)
        data_out <= reset_val; 
    else if (load_en) 
        data_out <= load_data; 
end 
endmodule 
