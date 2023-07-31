/*
Write Back Stage
*/

module WB(
    input logic clk, n_rst, 

    input logic[31:0] pc_WB, id_WB, y_WB, MRD, 

    output logic[4:0] wa, 
    output logic[31:0] wd, 
    output logic WERF 
);

assign wa = id_WB[25:21]; 
logic[1:0] WDSEL; 

control CTRL(
    .op_code(id_WB[31:26]), 
    .Z(1'b0), 
    .RESET(1'b0),
    .IRQ(1'b0),
    .WERF(WERF), 
    .WDSEL(WDSEL)
);

always_comb begin
    case(WDSEL)
    2'b00: wd = pc_WB; 
    2'b01: wd = y_WB; 
    2'b10: wd = MRD; 
    default: wd = 'b0; 
    endcase
end


endmodule 