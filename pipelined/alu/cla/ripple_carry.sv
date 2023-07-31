module ripple_carry (
    input logic[31:0] A, B, 
    input logic Cin,
    output logic[31:0] S
);


logic[32:0] cin; 

genvar k; 

generate 
    for(k = 0; k < 32; k += 1) begin
        unit_adder U(.a(A[k]), .b(B[k]), .cin(cin[k]), .s(S[k]), .cout(cin[k+1])); 
    end
endgenerate 

assign cin[0] = Cin; 

endmodule 