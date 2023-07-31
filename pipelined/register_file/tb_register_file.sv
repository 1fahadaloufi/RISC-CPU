`timescale 1ns/10ps

module tb_register_file();

localparam CLK_PERIOD = 20; // 50 MHz clock

// inputs
logic tb_clk;
logic tb_n_rst; 

logic [4:0] tb_RA1, tb_RA2, tb_WA; 
logic[31:0] tb_WD; 

logic tb_WE; 

// output
logic[31:0] tb_RD1, tb_RD2; 



// Test Signals
logic[1023:0] test_case; 
integer test_num = 0; 

// test module
register_file DUT(.clk(tb_clk), .n_rst(tb_n_rst), .WA(tb_WA), .WE(tb_WE), .WD(tb_WD), .RA1(tb_RA1), .RA2(tb_RA2), .RD1(tb_RD1), .RD2(tb_RD2)); 


always begin: CLK_GENERATION_BLOCK
    tb_clk = 1'b0; 
    #(CLK_PERIOD / 2.0); 
    tb_clk = 1'b1; 
    #(CLK_PERIOD / 2.0); 
end

// intialize dump files & vars
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars; 
end

// simulation
initial begin
    test_num += 1; 
    test_case = "RESET";
    tb_n_rst = 1'b0; 
    tb_WE = 1'b0;
    tb_WD = 'b0; 
    tb_WA = 'b0; 
    tb_RA1 = 'b0;
    tb_RA2 = 'b0; 

    #(CLK_PERIOD * 2); 

    test_num += 1; 
    test_case = "Write 1001 - 1032 into the 32 registers";
    @(negedge tb_clk); 
    tb_n_rst = 1'b1; 

    for(integer i = 0; i < 32; i += 1) begin
        @(negedge tb_clk); 
        tb_WD = i + 1001; 
        tb_WE = 1'b1; 
        tb_WA = i; 
    end
    @(negedge tb_clk);
    tb_WE = 1'b0;  


    test_num += 1; 
    test_case = "Read all 32 registers";

    for(integer i = 0; i <  16; i += 1) begin 
        tb_RA1 = i * 2; 
        tb_RA2 = i * 2 + 1; 
        @(negedge tb_clk);
    end
    
    /*
    tb_A = 32'd1; 
    tb_B = -32'd100; 
    tb_FN = ADD; 

    #(20); 

    test_num += 1; 
    test_case = "Arithmetic Right Shift";
    tb_A = -32'd8; 
    tb_B = 32'd2; 
    tb_FN = SRA; 

    #(20); 

    test_num += 1; 
    test_case = "A Function";
    tb_A = -32'd8; 
    tb_B = 32'd590; 
    tb_FN = AFN; 

    #(20); 

    test_num += 1; 
    test_case = "CMPLE";
    tb_A = -32'd8; 
    tb_B = 32'd95999; 
    tb_FN = CMPLE; 

    #(20); 

*/

    $finish; 

end


endmodule