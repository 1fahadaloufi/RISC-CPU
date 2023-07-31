`timescale 1ns/10ps

/*
From mapped simulations, approximate prop delay is ~ 2.5 ns 

*/
module tb_shifter();

enum logic[1:0] {SHL = 2'b00, SHR = 2'b01, SRA = 2'b11} SHIFT_MODE; 

// inputs
logic[31:0] tb_A;
logic[4:0] tb_B;
logic[1:0] tb_SFN; 

// output
logic[31:0] tb_Y;



// Test Signals
logic[1023:0] test_case; 
integer test_num = 0; 

// test module
shifter DUT(.A(tb_A), .B(tb_B), .Y(tb_Y), .SFN(tb_SFN)); 


// intialize dump files & vars
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars; 
end

// simulation
initial begin

    test_num += 1; 
    test_case = "Left Shift";
    tb_A = 'b1; 
    tb_B = 5'd1; 
    tb_SFN = SHL; 

    #(20); 

    test_num += 1; 
    test_case = "Left Shift";
    tb_A = -32'd8; 
    tb_B = 5'd28; 
    tb_SFN = SHL; 

    #(20); 

    test_num += 1; 
    test_case = "Right Shift";
    tb_A = -32'd8; 
    tb_B = 5'd2; 
    tb_SFN = SHR; 

    #(20); 

    test_num += 1; 
    test_case = "Arithmetic Right Shift";
    tb_A = -32'd8; 
    tb_B = 5'd3; 
    tb_SFN = SRA; 

    #(20); 



end


endmodule