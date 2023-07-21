module register_file(
    input logic clk, n_rst,
    input logic[4:0] RA1, RA2, WA,
    input logic[31:0] WD,
    input logic WE,

    output logic[31:0] RD1, RD2
);

logic[31:0] WA_dec; 
logic[31:0] reg_outputs[31:0]; 

genvar i; 
generate 
    for(i = 0; i < 31; i += 1)
        le_reg REGX(.clk(clk), .n_rst(n_rst), .load_en(WE & WA_dec[i]), .load_data(WD), .data_out(reg_outputs[i])); 
endgenerate 


always_comb begin: READING_REGISTERS
    RD1 = 'b0; 
    RD2 = 'b0; 

    if(RA1 != 5'd31)
        RD1 = reg_outputs[RA1]; 
    
    if(RA2 != 5'd31)
        RD2 = reg_outputs[RA2]; 
end

always_comb begin: WA_DECODER_LOGIC
    WA_dec = 'b0; 
    WA_dec[WA] = 1'b1; 
end

endmodule 