module bool_func(
    input logic [31:0] A, B,     
    input logic [3:0] BFN,

    output logic[31:0] Y
);

always_comb begin
    for(integer i = 0; i < 32; i += 1) 
        Y[i] = BFN[{B[i], A[i]}]; 
end
endmodule