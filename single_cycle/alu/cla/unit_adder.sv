/*
Unit adder for carry look ahead
*/

module unit_adder(
    input logic a, b, cin, 
    output logic g, p, s, cout
); 


assign g = a & b;    // generate
assign p = a ^ b;    // propagate
assign s = p ^ cin;  // sum 

assign cout = g | (p & cin); 

endmodule 