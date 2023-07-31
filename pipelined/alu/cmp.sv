module cmp (
    input logic z, v, n, 
    input logic[1:0] CFN,
    
    output logic[31:0] Y
);



assign Y = CFN == 2'b01 ? {{31{1'b0}}, z} : 
           (CFN == 2'b10 ? {{31{1'b0}}, n ^ v} : 
            {{31{1'b0}}, z | (n ^ v) }
           ); 
           



endmodule 
