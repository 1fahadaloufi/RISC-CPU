module alu (
    input logic [31:0] A, B,
    input logic[5:0] FN,

    output logic[31:0] Y
);

logic[31:0] shift_o, bool_o, arith_o, cmp_o; // signals from diff alu functions
logic n, z, v; 
logic[31:0] sub_outputs[3:0]; 


arith ARTH (.A(A), .B(B), .AFN(FN[0]), .z(z), .v(v), .n(n), .S(arith_o)); 
shifter SHIFT(.A(A), .B(B[4:0]), .SFN(FN[1:0]), .Y(shift_o)); 
bool_func BOOL(.A(A), .B(B), .BFN(FN[3:0]), .Y(bool_o));
cmp CMP(.CFN(FN[2:1]), .Y(cmp_o), .z(z), .v(v), .n(n)); 



always_comb begin
    Y = 32'd0; 
    case(FN[5:4])
        2'b11: Y = shift_o; 
        2'b10: Y = bool_o; 
        2'b01: Y = arith_o;
        2'b00: Y = cmp_o; 
    endcase 
end


endmodule