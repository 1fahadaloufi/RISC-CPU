module arith(
    input logic[31:0] A, B, 
    input logic AFN,

    output logic[31:0] S,
    output logic z, v, n  // n = negative, v = overflow, z = zero
);

logic[31:0] B_in; // input B to adder


assign B_in = B ^ {32{AFN}}; 

cla ADDER(.A(A), .B(B_in), .Cin(AFN), .S(S)); 

assign z = (S == 32'd0) ? 1'b1 : 1'b0; 
assign n = S[31] == 1'b1 ? 1'b1 : 1'b0; 
assign v = (A[31] & B_in[31] & ~S[31]) | (~A[31] & ~B_in[31] & S[31]);



endmodule 