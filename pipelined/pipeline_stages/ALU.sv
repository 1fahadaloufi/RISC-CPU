/*
ALU Stage 
*/

module ALU(
    input logic clk, n_rst, 

    input logic[31:0] id_ALU, pc_ALU, a_ALU, b_ALU, d_ALU,

    output logic[31:0] y, y_MEM, pc_MEM, id_MEM, d_MEM
); 

localparam NOP = 32'h83fff800; 

logic[5:0] ALUFN; 

always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst) begin
        pc_MEM <= 'b0; 
        id_MEM <= NOP; 
        y_MEM <= 'b0; 
        d_MEM <= 'b0; 
    end
    else begin
        y_MEM <= y; 
        pc_MEM <= pc_ALU; 
        id_MEM <= id_ALU; 
        d_MEM <= d_ALU; 
    end
end 

alu alu(
    .A(a_ALU),
    .B(b_ALU),
    .FN(ALUFN), 
    .Y(y)
); 

control CTRL(
    .op_code(id_ALU[31:26]),
    .Z(1'b0), 
    .RESET(1'b0),
    .IRQ(1'b0),
    .ALUFN(ALUFN)
); 

endmodule 