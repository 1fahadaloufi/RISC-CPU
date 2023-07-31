/*
Load enable 32-bit register 
*/

module le_reg(
    input logic clk, n_rst, 
    input logic[31:0] load_data, 
    input logic load_en, 

    output logic[31:0] data_out
);


always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst)
        data_out <= 'b0; 
    else if (load_en) 
        data_out <= load_data; 
end 
endmodule 
