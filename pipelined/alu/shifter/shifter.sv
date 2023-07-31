/*
Implements a barrel shifter that does following:
- logical shift left - SFN = 2'b00
- logical shift right -  SFN = 2'b01
- arithmetic shift right - SFN = 2'b11

Only the shifting left circuitry is implemented. To shift right, the input to the barrel shifter is reversed. 
Then, the output of the barel shifter is reversed to yield the final answer. 

*/

module shifter(
    input logic[31:0] A, 
    input logic[4:0] B,
    input logic [1:0] SFN,
    output logic[31:0] Y
); 


logic[31:0] A_0, A_1, A_2, A_3, A_4; // A_0 is mux output after looking at B[0], A_1 is mux output after looking at B[1] ...
logic [31:0] A_in; // the input to left shift barrel circuitry
logic extend_bit; 


assign extend_bit = SFN[1] ? A[31] : 1'b0; 


always_comb begin: A_IN_LOGIC
    if(~SFN[0])
        A_in = A; 
    else begin
        for(integer i = 0; i < 32; i += 1) begin
            A_in[i] = A[31 - i]; 
        end
    end
end


assign A_0 = B[0] ? {A_in[30:0], extend_bit} : A_in; 
assign A_1 = B[1] ? {A_0[29:0], {2{extend_bit}}} : A_0; 
assign A_2 = B[2] ? {A_1[27:0], {4{extend_bit}}} : A_1; 
assign A_3 = B[3] ? {A_2[23:0], {8{extend_bit}}} : A_2; 
assign A_4 = B[4] ? {A_3[15:0], {16{extend_bit}}} : A_3; 


always_comb begin: Y_LOGIC
    if(~SFN[0])
        Y = A_4; 
    else begin
        for(integer i = 0; i < 32; i += 1) begin
            Y[i] = A_4[31 - i]; 
        end
    end
end 

endmodule 