/* Generated by Yosys 0.29 (git sha1 9c5a60eb201, clang 14.0.3 -fPIC -Os) */

(* top =  1  *)
(* src = "source/alu/cla/cla.sv:2.1-94.10" *)
module cla(A, B, Cin, S, S2, S3);
  (* src = "source/alu/cla/cla.sv:3.23-3.24" *)
  input [31:0] A;
  wire [31:0] A;
  (* src = "source/alu/cla/cla.sv:3.26-3.27" *)
  input [31:0] B;
  wire [31:0] B;
  (* src = "source/alu/cla/cla.sv:4.17-4.20" *)
  input Cin;
  wire Cin;
  (* src = "source/alu/cla/cla.sv:5.24-5.25" *)
  output [31:0] S;
  wire [31:0] S;
  (* src = "source/alu/cla/cla.sv:5.27-5.29" *)
  output [31:0] S2;
  wire [31:0] S2;
  (* src = "source/alu/cla/cla.sv:5.31-5.33" *)
  output [31:0] S3;
  wire [31:0] S3;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[0] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[10] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[11] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[12] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[13] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[14] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[15] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[16] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[17] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[18] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[19] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[1] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[20] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[21] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[22] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[23] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[24] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[25] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[26] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[27] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[28] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[29] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[2] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[30] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[31] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[3] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[4] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[5] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[6] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[7] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[8] ;
  (* src = "source/alu/cla/cla.sv:16.7-16.12" *)
  wire \cin_1[9] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[0] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[10] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[11] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[12] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[13] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[14] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[15] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[1] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[2] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[3] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[4] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[5] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[6] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[7] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[8] ;
  (* src = "source/alu/cla/cla.sv:17.7-17.12" *)
  wire \cin_2[9] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[0] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[1] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[2] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[3] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[4] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[5] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[6] ;
  (* src = "source/alu/cla/cla.sv:18.7-18.12" *)
  wire \cin_3[7] ;
  (* src = "source/alu/cla/cla.sv:19.7-19.12" *)
  wire \cin_4[0] ;
  (* src = "source/alu/cla/cla.sv:19.7-19.12" *)
  wire \cin_4[1] ;
  (* src = "source/alu/cla/cla.sv:19.7-19.12" *)
  wire \cin_4[2] ;
  (* src = "source/alu/cla/cla.sv:19.7-19.12" *)
  wire \cin_4[3] ;
  (* src = "source/alu/cla/cla.sv:20.7-20.12" *)
  wire \cin_5[0] ;
  (* src = "source/alu/cla/cla.sv:20.7-20.12" *)
  wire \cin_5[1] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[0] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[10] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[11] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[12] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[13] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[14] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[15] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[16] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[17] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[18] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[19] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[1] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[20] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[21] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[22] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[23] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[24] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[25] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[26] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[27] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[28] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[29] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[2] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[30] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[31] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[3] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[4] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[5] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[6] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[7] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[8] ;
  (* src = "source/alu/cla/cla.sv:9.12-9.16" *)
  wire [1:0] \gp_1[9] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[0] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[10] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[11] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[12] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[13] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[14] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[15] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[1] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[2] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[3] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[4] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[5] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[6] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[7] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[8] ;
  (* src = "source/alu/cla/cla.sv:10.12-10.16" *)
  wire [1:0] \gp_2[9] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[0] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[1] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[2] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[3] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[4] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[5] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[6] ;
  (* src = "source/alu/cla/cla.sv:11.12-11.16" *)
  wire [1:0] \gp_3[7] ;
  (* src = "source/alu/cla/cla.sv:12.12-12.16" *)
  wire [1:0] \gp_4[0] ;
  (* src = "source/alu/cla/cla.sv:12.12-12.16" *)
  wire [1:0] \gp_4[1] ;
  (* src = "source/alu/cla/cla.sv:12.12-12.16" *)
  wire [1:0] \gp_4[2] ;
  (* src = "source/alu/cla/cla.sv:12.12-12.16" *)
  wire [1:0] \gp_4[3] ;
  (* src = "source/alu/cla/cla.sv:13.12-13.16" *)
  wire [1:0] \gp_5[0] ;
  (* src = "source/alu/cla/cla.sv:13.12-13.16" *)
  wire [1:0] \gp_5[1] ;
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:73.10-74.59" *)
  gp_block L6 (
    .cin(Cin),
    .cin_h(\cin_5[1] ),
    .cin_l(\cin_5[0] ),
    .g_h(\gp_5[1] [1]),
    .g_l(\gp_5[0] [1]),
    .p_h(\gp_5[1] [0]),
    .p_l(\gp_5[0] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[0].L1  (
    .a(A[0]),
    .b(B[0]),
    .cin(\cin_1[0] ),
    .g(\gp_1[0] [1]),
    .p(\gp_1[0] [0]),
    .s(S[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[10].L1  (
    .a(A[10]),
    .b(B[10]),
    .cin(\cin_1[10] ),
    .g(\gp_1[10] [1]),
    .p(\gp_1[10] [0]),
    .s(S[10])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[11].L1  (
    .a(A[11]),
    .b(B[11]),
    .cin(\cin_1[11] ),
    .g(\gp_1[11] [1]),
    .p(\gp_1[11] [0]),
    .s(S[11])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[12].L1  (
    .a(A[12]),
    .b(B[12]),
    .cin(\cin_1[12] ),
    .g(\gp_1[12] [1]),
    .p(\gp_1[12] [0]),
    .s(S[12])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[13].L1  (
    .a(A[13]),
    .b(B[13]),
    .cin(\cin_1[13] ),
    .g(\gp_1[13] [1]),
    .p(\gp_1[13] [0]),
    .s(S[13])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[14].L1  (
    .a(A[14]),
    .b(B[14]),
    .cin(\cin_1[14] ),
    .g(\gp_1[14] [1]),
    .p(\gp_1[14] [0]),
    .s(S[14])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[15].L1  (
    .a(A[15]),
    .b(B[15]),
    .cin(\cin_1[15] ),
    .g(\gp_1[15] [1]),
    .p(\gp_1[15] [0]),
    .s(S[15])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[16].L1  (
    .a(A[16]),
    .b(B[16]),
    .cin(\cin_1[16] ),
    .g(\gp_1[16] [1]),
    .p(\gp_1[16] [0]),
    .s(S[16])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[17].L1  (
    .a(A[17]),
    .b(B[17]),
    .cin(\cin_1[17] ),
    .g(\gp_1[17] [1]),
    .p(\gp_1[17] [0]),
    .s(S[17])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[18].L1  (
    .a(A[18]),
    .b(B[18]),
    .cin(\cin_1[18] ),
    .g(\gp_1[18] [1]),
    .p(\gp_1[18] [0]),
    .s(S[18])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[19].L1  (
    .a(A[19]),
    .b(B[19]),
    .cin(\cin_1[19] ),
    .g(\gp_1[19] [1]),
    .p(\gp_1[19] [0]),
    .s(S[19])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[1].L1  (
    .a(A[1]),
    .b(B[1]),
    .cin(\cin_1[1] ),
    .g(\gp_1[1] [1]),
    .p(\gp_1[1] [0]),
    .s(S[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[20].L1  (
    .a(A[20]),
    .b(B[20]),
    .cin(\cin_1[20] ),
    .g(\gp_1[20] [1]),
    .p(\gp_1[20] [0]),
    .s(S[20])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[21].L1  (
    .a(A[21]),
    .b(B[21]),
    .cin(\cin_1[21] ),
    .g(\gp_1[21] [1]),
    .p(\gp_1[21] [0]),
    .s(S[21])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[22].L1  (
    .a(A[22]),
    .b(B[22]),
    .cin(\cin_1[22] ),
    .g(\gp_1[22] [1]),
    .p(\gp_1[22] [0]),
    .s(S[22])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[23].L1  (
    .a(A[23]),
    .b(B[23]),
    .cin(\cin_1[23] ),
    .g(\gp_1[23] [1]),
    .p(\gp_1[23] [0]),
    .s(S[23])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[24].L1  (
    .a(A[24]),
    .b(B[24]),
    .cin(\cin_1[24] ),
    .g(\gp_1[24] [1]),
    .p(\gp_1[24] [0]),
    .s(S[24])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[25].L1  (
    .a(A[25]),
    .b(B[25]),
    .cin(\cin_1[25] ),
    .g(\gp_1[25] [1]),
    .p(\gp_1[25] [0]),
    .s(S[25])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[26].L1  (
    .a(A[26]),
    .b(B[26]),
    .cin(\cin_1[26] ),
    .g(\gp_1[26] [1]),
    .p(\gp_1[26] [0]),
    .s(S[26])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[27].L1  (
    .a(A[27]),
    .b(B[27]),
    .cin(\cin_1[27] ),
    .g(\gp_1[27] [1]),
    .p(\gp_1[27] [0]),
    .s(S[27])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[28].L1  (
    .a(A[28]),
    .b(B[28]),
    .cin(\cin_1[28] ),
    .g(\gp_1[28] [1]),
    .p(\gp_1[28] [0]),
    .s(S[28])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[29].L1  (
    .a(A[29]),
    .b(B[29]),
    .cin(\cin_1[29] ),
    .g(\gp_1[29] [1]),
    .p(\gp_1[29] [0]),
    .s(S[29])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[2].L1  (
    .a(A[2]),
    .b(B[2]),
    .cin(\cin_1[2] ),
    .g(\gp_1[2] [1]),
    .p(\gp_1[2] [0]),
    .s(S[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[30].L1  (
    .a(A[30]),
    .b(B[30]),
    .cin(\cin_1[30] ),
    .g(\gp_1[30] [1]),
    .p(\gp_1[30] [0]),
    .s(S[30])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[31].L1  (
    .a(A[31]),
    .b(B[31]),
    .cin(\cin_1[31] ),
    .g(\gp_1[31] [1]),
    .p(\gp_1[31] [0]),
    .s(S[31])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[3].L1  (
    .a(A[3]),
    .b(B[3]),
    .cin(\cin_1[3] ),
    .g(\gp_1[3] [1]),
    .p(\gp_1[3] [0]),
    .s(S[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[4].L1  (
    .a(A[4]),
    .b(B[4]),
    .cin(\cin_1[4] ),
    .g(\gp_1[4] [1]),
    .p(\gp_1[4] [0]),
    .s(S[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[5].L1  (
    .a(A[5]),
    .b(B[5]),
    .cin(\cin_1[5] ),
    .g(\gp_1[5] [1]),
    .p(\gp_1[5] [0]),
    .s(S[5])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[6].L1  (
    .a(A[6]),
    .b(B[6]),
    .cin(\cin_1[6] ),
    .g(\gp_1[6] [1]),
    .p(\gp_1[6] [0]),
    .s(S[6])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[7].L1  (
    .a(A[7]),
    .b(B[7]),
    .cin(\cin_1[7] ),
    .g(\gp_1[7] [1]),
    .p(\gp_1[7] [0]),
    .s(S[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[8].L1  (
    .a(A[8]),
    .b(B[8]),
    .cin(\cin_1[8] ),
    .g(\gp_1[8] [1]),
    .p(\gp_1[8] [0]),
    .s(S[8])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:27.20-27.100" *)
  unit_adder \genblk1[9].L1  (
    .a(A[9]),
    .b(B[9]),
    .cin(\cin_1[9] ),
    .g(\gp_1[9] [1]),
    .p(\gp_1[9] [0]),
    .s(S[9])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[0].L2  (
    .cin(\cin_2[0] ),
    .cin_h(\cin_1[1] ),
    .cin_l(\cin_1[0] ),
    .g_h(\gp_1[1] [1]),
    .g_hl(\gp_2[0] [1]),
    .g_l(\gp_1[0] [1]),
    .p_h(\gp_1[1] [0]),
    .p_hl(\gp_2[0] [0]),
    .p_l(\gp_1[0] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[10].L2  (
    .cin(\cin_2[10] ),
    .cin_h(\cin_1[21] ),
    .cin_l(\cin_1[20] ),
    .g_h(\gp_1[21] [1]),
    .g_hl(\gp_2[10] [1]),
    .g_l(\gp_1[20] [1]),
    .p_h(\gp_1[21] [0]),
    .p_hl(\gp_2[10] [0]),
    .p_l(\gp_1[20] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[11].L2  (
    .cin(\cin_2[11] ),
    .cin_h(\cin_1[23] ),
    .cin_l(\cin_1[22] ),
    .g_h(\gp_1[23] [1]),
    .g_hl(\gp_2[11] [1]),
    .g_l(\gp_1[22] [1]),
    .p_h(\gp_1[23] [0]),
    .p_hl(\gp_2[11] [0]),
    .p_l(\gp_1[22] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[12].L2  (
    .cin(\cin_2[12] ),
    .cin_h(\cin_1[25] ),
    .cin_l(\cin_1[24] ),
    .g_h(\gp_1[25] [1]),
    .g_hl(\gp_2[12] [1]),
    .g_l(\gp_1[24] [1]),
    .p_h(\gp_1[25] [0]),
    .p_hl(\gp_2[12] [0]),
    .p_l(\gp_1[24] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[13].L2  (
    .cin(\cin_2[13] ),
    .cin_h(\cin_1[27] ),
    .cin_l(\cin_1[26] ),
    .g_h(\gp_1[27] [1]),
    .g_hl(\gp_2[13] [1]),
    .g_l(\gp_1[26] [1]),
    .p_h(\gp_1[27] [0]),
    .p_hl(\gp_2[13] [0]),
    .p_l(\gp_1[26] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[14].L2  (
    .cin(\cin_2[14] ),
    .cin_h(\cin_1[29] ),
    .cin_l(\cin_1[28] ),
    .g_h(\gp_1[29] [1]),
    .g_hl(\gp_2[14] [1]),
    .g_l(\gp_1[28] [1]),
    .p_h(\gp_1[29] [0]),
    .p_hl(\gp_2[14] [0]),
    .p_l(\gp_1[28] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[15].L2  (
    .cin(\cin_2[15] ),
    .cin_h(\cin_1[31] ),
    .cin_l(\cin_1[30] ),
    .g_h(\gp_1[31] [1]),
    .g_hl(\gp_2[15] [1]),
    .g_l(\gp_1[30] [1]),
    .p_h(\gp_1[31] [0]),
    .p_hl(\gp_2[15] [0]),
    .p_l(\gp_1[30] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[1].L2  (
    .cin(\cin_2[1] ),
    .cin_h(\cin_1[3] ),
    .cin_l(\cin_1[2] ),
    .g_h(\gp_1[3] [1]),
    .g_hl(\gp_2[1] [1]),
    .g_l(\gp_1[2] [1]),
    .p_h(\gp_1[3] [0]),
    .p_hl(\gp_2[1] [0]),
    .p_l(\gp_1[2] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[2].L2  (
    .cin(\cin_2[2] ),
    .cin_h(\cin_1[5] ),
    .cin_l(\cin_1[4] ),
    .g_h(\gp_1[5] [1]),
    .g_hl(\gp_2[2] [1]),
    .g_l(\gp_1[4] [1]),
    .p_h(\gp_1[5] [0]),
    .p_hl(\gp_2[2] [0]),
    .p_l(\gp_1[4] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[3].L2  (
    .cin(\cin_2[3] ),
    .cin_h(\cin_1[7] ),
    .cin_l(\cin_1[6] ),
    .g_h(\gp_1[7] [1]),
    .g_hl(\gp_2[3] [1]),
    .g_l(\gp_1[6] [1]),
    .p_h(\gp_1[7] [0]),
    .p_hl(\gp_2[3] [0]),
    .p_l(\gp_1[6] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[4].L2  (
    .cin(\cin_2[4] ),
    .cin_h(\cin_1[9] ),
    .cin_l(\cin_1[8] ),
    .g_h(\gp_1[9] [1]),
    .g_hl(\gp_2[4] [1]),
    .g_l(\gp_1[8] [1]),
    .p_h(\gp_1[9] [0]),
    .p_hl(\gp_2[4] [0]),
    .p_l(\gp_1[8] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[5].L2  (
    .cin(\cin_2[5] ),
    .cin_h(\cin_1[11] ),
    .cin_l(\cin_1[10] ),
    .g_h(\gp_1[11] [1]),
    .g_hl(\gp_2[5] [1]),
    .g_l(\gp_1[10] [1]),
    .p_h(\gp_1[11] [0]),
    .p_hl(\gp_2[5] [0]),
    .p_l(\gp_1[10] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[6].L2  (
    .cin(\cin_2[6] ),
    .cin_h(\cin_1[13] ),
    .cin_l(\cin_1[12] ),
    .g_h(\gp_1[13] [1]),
    .g_hl(\gp_2[6] [1]),
    .g_l(\gp_1[12] [1]),
    .p_h(\gp_1[13] [0]),
    .p_hl(\gp_2[6] [0]),
    .p_l(\gp_1[12] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[7].L2  (
    .cin(\cin_2[7] ),
    .cin_h(\cin_1[15] ),
    .cin_l(\cin_1[14] ),
    .g_h(\gp_1[15] [1]),
    .g_hl(\gp_2[7] [1]),
    .g_l(\gp_1[14] [1]),
    .p_h(\gp_1[15] [0]),
    .p_hl(\gp_2[7] [0]),
    .p_l(\gp_1[14] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[8].L2  (
    .cin(\cin_2[8] ),
    .cin_h(\cin_1[17] ),
    .cin_l(\cin_1[16] ),
    .g_h(\gp_1[17] [1]),
    .g_hl(\gp_2[8] [1]),
    .g_l(\gp_1[16] [1]),
    .p_h(\gp_1[17] [0]),
    .p_hl(\gp_2[8] [0]),
    .p_l(\gp_1[16] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:35.18-37.58" *)
  gp_block \genblk2[9].L2  (
    .cin(\cin_2[9] ),
    .cin_h(\cin_1[19] ),
    .cin_l(\cin_1[18] ),
    .g_h(\gp_1[19] [1]),
    .g_hl(\gp_2[9] [1]),
    .g_l(\gp_1[18] [1]),
    .p_h(\gp_1[19] [0]),
    .p_hl(\gp_2[9] [0]),
    .p_l(\gp_1[18] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[0].L3  (
    .cin(\cin_3[0] ),
    .cin_h(\cin_2[1] ),
    .cin_l(\cin_2[0] ),
    .g_h(\gp_2[1] [1]),
    .g_hl(\gp_3[0] [1]),
    .g_l(\gp_2[0] [1]),
    .p_h(\gp_2[1] [0]),
    .p_hl(\gp_3[0] [0]),
    .p_l(\gp_2[0] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[1].L3  (
    .cin(\cin_3[1] ),
    .cin_h(\cin_2[3] ),
    .cin_l(\cin_2[2] ),
    .g_h(\gp_2[3] [1]),
    .g_hl(\gp_3[1] [1]),
    .g_l(\gp_2[2] [1]),
    .p_h(\gp_2[3] [0]),
    .p_hl(\gp_3[1] [0]),
    .p_l(\gp_2[2] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[2].L3  (
    .cin(\cin_3[2] ),
    .cin_h(\cin_2[5] ),
    .cin_l(\cin_2[4] ),
    .g_h(\gp_2[5] [1]),
    .g_hl(\gp_3[2] [1]),
    .g_l(\gp_2[4] [1]),
    .p_h(\gp_2[5] [0]),
    .p_hl(\gp_3[2] [0]),
    .p_l(\gp_2[4] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[3].L3  (
    .cin(\cin_3[3] ),
    .cin_h(\cin_2[7] ),
    .cin_l(\cin_2[6] ),
    .g_h(\gp_2[7] [1]),
    .g_hl(\gp_3[3] [1]),
    .g_l(\gp_2[6] [1]),
    .p_h(\gp_2[7] [0]),
    .p_hl(\gp_3[3] [0]),
    .p_l(\gp_2[6] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[4].L3  (
    .cin(\cin_3[4] ),
    .cin_h(\cin_2[9] ),
    .cin_l(\cin_2[8] ),
    .g_h(\gp_2[9] [1]),
    .g_hl(\gp_3[4] [1]),
    .g_l(\gp_2[8] [1]),
    .p_h(\gp_2[9] [0]),
    .p_hl(\gp_3[4] [0]),
    .p_l(\gp_2[8] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[5].L3  (
    .cin(\cin_3[5] ),
    .cin_h(\cin_2[11] ),
    .cin_l(\cin_2[10] ),
    .g_h(\gp_2[11] [1]),
    .g_hl(\gp_3[5] [1]),
    .g_l(\gp_2[10] [1]),
    .p_h(\gp_2[11] [0]),
    .p_hl(\gp_3[5] [0]),
    .p_l(\gp_2[10] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[6].L3  (
    .cin(\cin_3[6] ),
    .cin_h(\cin_2[13] ),
    .cin_l(\cin_2[12] ),
    .g_h(\gp_2[13] [1]),
    .g_hl(\gp_3[6] [1]),
    .g_l(\gp_2[12] [1]),
    .p_h(\gp_2[13] [0]),
    .p_hl(\gp_3[6] [0]),
    .p_l(\gp_2[12] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:45.18-47.58" *)
  gp_block \genblk3[7].L3  (
    .cin(\cin_3[7] ),
    .cin_h(\cin_2[15] ),
    .cin_l(\cin_2[14] ),
    .g_h(\gp_2[15] [1]),
    .g_hl(\gp_3[7] [1]),
    .g_l(\gp_2[14] [1]),
    .p_h(\gp_2[15] [0]),
    .p_hl(\gp_3[7] [0]),
    .p_l(\gp_2[14] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:55.18-57.58" *)
  gp_block \genblk4[0].L4  (
    .cin(\cin_4[0] ),
    .cin_h(\cin_3[1] ),
    .cin_l(\cin_3[0] ),
    .g_h(\gp_3[1] [1]),
    .g_hl(\gp_4[0] [1]),
    .g_l(\gp_3[0] [1]),
    .p_h(\gp_3[1] [0]),
    .p_hl(\gp_4[0] [0]),
    .p_l(\gp_3[0] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:55.18-57.58" *)
  gp_block \genblk4[1].L4  (
    .cin(\cin_4[1] ),
    .cin_h(\cin_3[3] ),
    .cin_l(\cin_3[2] ),
    .g_h(\gp_3[3] [1]),
    .g_hl(\gp_4[1] [1]),
    .g_l(\gp_3[2] [1]),
    .p_h(\gp_3[3] [0]),
    .p_hl(\gp_4[1] [0]),
    .p_l(\gp_3[2] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:55.18-57.58" *)
  gp_block \genblk4[2].L4  (
    .cin(\cin_4[2] ),
    .cin_h(\cin_3[5] ),
    .cin_l(\cin_3[4] ),
    .g_h(\gp_3[5] [1]),
    .g_hl(\gp_4[2] [1]),
    .g_l(\gp_3[4] [1]),
    .p_h(\gp_3[5] [0]),
    .p_hl(\gp_4[2] [0]),
    .p_l(\gp_3[4] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:55.18-57.58" *)
  gp_block \genblk4[3].L4  (
    .cin(\cin_4[3] ),
    .cin_h(\cin_3[7] ),
    .cin_l(\cin_3[6] ),
    .g_h(\gp_3[7] [1]),
    .g_hl(\gp_4[3] [1]),
    .g_l(\gp_3[6] [1]),
    .p_h(\gp_3[7] [0]),
    .p_hl(\gp_4[3] [0]),
    .p_l(\gp_3[6] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:65.18-67.58" *)
  gp_block \genblk5[0].L5  (
    .cin(\cin_5[0] ),
    .cin_h(\cin_4[1] ),
    .cin_l(\cin_4[0] ),
    .g_h(\gp_4[1] [1]),
    .g_hl(\gp_5[0] [1]),
    .g_l(\gp_4[0] [1]),
    .p_h(\gp_4[1] [0]),
    .p_hl(\gp_5[0] [0]),
    .p_l(\gp_4[0] [0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "source/alu/cla/cla.sv:65.18-67.58" *)
  gp_block \genblk5[1].L5  (
    .cin(\cin_5[1] ),
    .cin_h(\cin_4[3] ),
    .cin_l(\cin_4[2] ),
    .g_h(\gp_4[3] [1]),
    .g_hl(\gp_5[1] [1]),
    .g_l(\gp_4[2] [1]),
    .p_h(\gp_4[3] [0]),
    .p_hl(\gp_5[1] [0]),
    .p_l(\gp_4[2] [0])
  );
endmodule

(* src = "source/alu/cla/gp_block.sv:2.1-15.10" *)
module gp_block(g_l, g_h, p_l, p_h, cin, g_hl, p_hl, cin_h, cin_l);
  wire _0_;
  wire _1_;
  (* src = "source/alu/cla/gp_block.sv:3.37-3.40" *)
  input cin;
  wire cin;
  (* src = "source/alu/cla/gp_block.sv:5.18-5.23" *)
  output cin_h;
  wire cin_h;
  (* src = "source/alu/cla/gp_block.sv:5.25-5.30" *)
  output cin_l;
  wire cin_l;
  (* src = "source/alu/cla/gp_block.sv:3.22-3.25" *)
  input g_h;
  wire g_h;
  (* src = "source/alu/cla/gp_block.sv:4.18-4.22" *)
  output g_hl;
  wire g_hl;
  (* src = "source/alu/cla/gp_block.sv:3.17-3.20" *)
  input g_l;
  wire g_l;
  (* src = "source/alu/cla/gp_block.sv:3.32-3.35" *)
  input p_h;
  wire p_h;
  (* src = "source/alu/cla/gp_block.sv:4.24-4.28" *)
  output p_hl;
  wire p_hl;
  (* src = "source/alu/cla/gp_block.sv:3.27-3.30" *)
  input p_l;
  wire p_l;
  AOI21X1 _2_ (
    .A(g_l),
    .B(p_h),
    .C(g_h),
    .Y(_1_)
  );
  INVX1 _3_ (
    .A(_1_),
    .Y(g_hl)
  );
  AND2X1 _4_ (
    .A(p_h),
    .B(p_l),
    .Y(p_hl)
  );
  AOI21X1 _5_ (
    .A(p_l),
    .B(cin),
    .C(g_l),
    .Y(_0_)
  );
  INVX1 _6_ (
    .A(_0_),
    .Y(cin_h)
  );
  assign cin_l = cin;
endmodule

(* src = "source/alu/cla/unit_adder.sv:5.1-17.10" *)
module unit_adder(a, b, cin, g, p, s, cout);
  wire _0_;
  wire _1_;
  wire _2_;
  (* src = "source/alu/cla/unit_adder.sv:6.17-6.18" *)
  input a;
  wire a;
  (* src = "source/alu/cla/unit_adder.sv:6.20-6.21" *)
  input b;
  wire b;
  (* src = "source/alu/cla/unit_adder.sv:6.23-6.26" *)
  input cin;
  wire cin;
  (* src = "source/alu/cla/unit_adder.sv:7.27-7.31" *)
  output cout;
  wire cout;
  (* src = "source/alu/cla/unit_adder.sv:7.18-7.19" *)
  output g;
  wire g;
  (* src = "source/alu/cla/unit_adder.sv:7.21-7.22" *)
  output p;
  wire p;
  (* src = "source/alu/cla/unit_adder.sv:7.24-7.25" *)
  output s;
  wire s;
  INVX1 _3_ (
    .A(cin),
    .Y(_1_)
  );
  NAND2X1 _4_ (
    .A(a),
    .B(b),
    .Y(_2_)
  );
  INVX1 _5_ (
    .A(_2_),
    .Y(g)
  );
  XNOR2X1 _6_ (
    .A(a),
    .B(b),
    .Y(_0_)
  );
  INVX1 _7_ (
    .A(_0_),
    .Y(p)
  );
  XNOR2X1 _8_ (
    .A(cin),
    .B(_0_),
    .Y(s)
  );
  OAI21X1 _9_ (
    .A(_1_),
    .B(_0_),
    .C(_2_),
    .Y(cout)
  );
endmodule