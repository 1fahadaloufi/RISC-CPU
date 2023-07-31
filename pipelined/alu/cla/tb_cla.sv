`timescale 1ns/10ps

module tb_cla();


// inputs
logic[31:0] tb_A;
logic[31:0] tb_B;
logic tb_Cin; 

// output
logic[31:0] tb_S;



// test module
cla DUT(.A(tb_A), .B(tb_B), .S(tb_S), .Cin(tb_Cin)); 




// intialize dump files & vars
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars; 
end

// simulation
initial begin
    tb_A =  32'd1; 
    tb_B = 32'd1;
    tb_Cin = 1'b1; 

    #(20); 
    tb_A =  32'd15; 
    tb_B = 32'd27;
    tb_Cin = 1'b1; 
    
    #(20); 
    tb_A =  -32'd1; 
    tb_B = 32'd27;
    tb_Cin = 1'b0; 

    #(20); 
    tb_A =  -32'd17; 
    tb_B =  -32'd468;
    tb_Cin = 1'b0; 
    #(20);

    #(20); 
    tb_A =  32'd5987; 
    tb_B = 32'd1249;
    tb_Cin = 1'b1; 

    #(20);
    tb_A =  32'd0; 
    tb_B = 32'd0;
    tb_Cin = 1'b0; 

    #(20);
    tb_A =  -32'd1; 
    tb_B = 32'd1;
    tb_Cin = 1'b0; 

    #(30);


end


endmodule