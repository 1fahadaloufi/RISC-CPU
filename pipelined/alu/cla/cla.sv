// 32-bit carry look ahead adder
module cla(
    input logic[31:0] A, B, 
    input logic Cin, 
    output logic[31:0] S
);

// generate signals
logic[1:0] gp_1[31:0]; // first level generates and propagates index 0 stores propagate and index 1 stores generates 
logic[1:0] gp_2[15:0]; // ...
logic[1:0] gp_3[7:0];
logic[1:0] gp_4[3:0];
logic[1:0] gp_5[1:0]; 

// carry_in signals 
logic cin_1 [31:0]; // carry_in to the first level 
logic cin_2 [15:0]; // ...
logic cin_3 [8:0];
logic cin_4 [3:0];
logic cin_5 [1:0];  


// generate 32 unit_adder modules (considered 1st leve of gp (generate & propagates) )
genvar k; 
generate 
    for(k = 0; k < 32; k += 1) begin
        unit_adder L1(.a(A[k]), .b(B[k]), .cin(cin_1[k]), .s(S[k]), .g(gp_1[k][1]), .p(gp_1[k][0])); 
    end
endgenerate


// generate 2nd level gp + carry_in
generate 
    for(k = 0; k < 16; k += 1) begin
        gp_block L2(.g_l(gp_1[k*2][1]), .g_h(gp_1[k*2 + 1][1]), .p_l(gp_1[k*2][0]), .p_h(gp_1[k*2 + 1][0]), .cin(cin_2[k]), 
                    .cin_l(cin_1[k * 2]), .cin_h(cin_1[k*2 + 1]),
                    .g_hl(gp_2[k][1]), .p_hl(gp_2[k][0])); 
    end
endgenerate 


// 3rd level
generate 
    for(k = 0; k < 8; k += 1) begin
        gp_block L3(.g_l(gp_2[k*2][1]), .g_h(gp_2[k*2 + 1][1]), .p_l(gp_2[k*2][0]), .p_h(gp_2[k*2 + 1][0]), .cin(cin_3[k]), 
                    .cin_l(cin_2[k * 2]), .cin_h(cin_2[k*2 + 1]),
                    .g_hl(gp_3[k][1]), .p_hl(gp_3[k][0])); 
    end
endgenerate 


// 4th level
generate 
    for(k = 0; k < 4; k += 1) begin
        gp_block L4(.g_l(gp_3[k*2][1]), .g_h(gp_3[k*2 + 1][1]), .p_l(gp_3[k*2][0]), .p_h(gp_3[k*2 + 1][0]), .cin(cin_4[k]), 
                    .cin_l(cin_3[k * 2]), .cin_h(cin_3[k*2 + 1]),
                    .g_hl(gp_4[k][1]), .p_hl(gp_4[k][0])); 
    end
endgenerate 


// 5th level
generate 
    for(k = 0; k < 2; k += 1) begin
        gp_block L5(.g_l(gp_4[k*2][1]), .g_h(gp_4[k*2 + 1][1]), .p_l(gp_4[k*2][0]), .p_h(gp_4[k*2 + 1][0]), .cin(cin_5[k]), 
                    .cin_l(cin_4[k * 2]), .cin_h(cin_4[k*2 + 1]),
                    .g_hl(gp_5[k][1]), .p_hl(gp_5[k][0])); 
    end
endgenerate 


// final gp block
gp_block L6(.g_l(gp_5[0][1]), .g_h(gp_5[1][1]), .p_l(gp_5[0][0]), .p_h(gp_5[1][0]),
            .cin(Cin), .cin_l(cin_5[0]), .cin_h(cin_5[1])); 



/* for comparison between different adders 

Result: 
As expected, CLA is significantly faster with longest prop delay ~ 5.5 ns
ripple carry longest prop delay ~ 19 ns
synthesized adder longest prop delay ~ 9 ns

*/ 


// // comparison with ripple carry adder
// ripple_carry U2(.A(A), .B(B), .S(S2), .Cin(Cin)); 

// // comparison with synthesized adder
// assign S3 = A + B + {{31{1'b0}}, Cin}; 

endmodule