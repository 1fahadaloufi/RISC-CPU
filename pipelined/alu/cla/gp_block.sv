// block for handling generates & propogates
module gp_block(
    input logic g_l, g_h, p_l, p_h, cin, // g_l = generate of lower block, p_h = propagate of higher block, cin = carry_in for lower block ...
    output logic g_hl, p_hl, // combined generate and propagate of the two blocks
    output logic cin_h, cin_l // carry_ins of high and low blocks respectively
);


assign g_hl = g_h | (g_l & p_h); 
assign p_hl = p_h & p_l; 

assign cin_h = g_l  | (p_l & (cin_l)); 
assign cin_l = cin; 

endmodule