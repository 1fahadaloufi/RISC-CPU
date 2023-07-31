`timescale 1ns/10ps

module tb_alu();

enum logic[5:0] {CMPEQ = 6'b000011, CMPLT = 6'b000101, CMPLE = 6'b000111,
                 ADD = 6'b010000, SUB = 6'b010001, SHL = 6'b110000,
                 SHR = 6'b110001, SRA = 6'b110011, AFN = 6'b101010, 
                 AND = 6'b101000, OR = 6'b101110, XOR = 6'b100110} ALU_OP; 

// inputs
logic[31:0] tb_A;
logic[31:0] tb_B;
logic[5:0] tb_FN; 

// output
logic[31:0] tb_Y;



// Test Signals
logic[1023:0] test_case; 
integer test_num = 0; 

// test module
alu DUT(.A(tb_A), .B(tb_B), .Y(tb_Y), .FN(tb_FN)); 


// intialize dump files & vars
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars; 
end

// simulation
initial begin

    test_num += 1; 
    test_case = "ADD";
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



end


endmodule