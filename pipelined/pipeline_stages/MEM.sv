/*
Memory Stage 
*/
module MEM (
    input logic clk, n_rst, 

    input logic[31:0] pc_MEM, id_MEM, y_MEM, 

    output logic[31:0] pc_WB, id_WB, y_WB,

    output logic MWR
); 

localparam NOP = 32'h83fff800; 
 
always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst) begin
        pc_WB <= 'b0; 
        id_WB <= NOP; 
        y_WB <= 'b0; 
    end
    else begin
        pc_WB <= pc_MEM; 
        id_WB <= id_MEM; 
        y_WB <= y_MEM; 
    end
end


control CTRL(
    .op_code(id_MEM[31:26]), 
    .Z(1'b0), 
    .RESET(1'b0),
    .IRQ(1'b0),
    .MWR(MWR)
); 

endmodule 