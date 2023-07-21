module control (
    input logic[5:0] op_code,
    input logic Z, RESET, IRQ, 

    output logic[5:0] ALUFN,
    output logic ASEL, BSEL,
    output logic MOE, MWR, 
    output logic[2:0] PCSEL, 
    output logic RA2SEL,
    output logic WASEL,
    output logic[1:0] WDSEL 
    output logic WERF,
);

enum logic[5:0] {CMPEQ = 6'b000011, CMPLT = 6'b000101, CMPLE = 6'b000111,
                 ADD = 6'b010000, SUB = 6'b010001, SHL = 6'b110000,
                 SHR = 6'b110001, SRA = 6'b110011, AFN = 6'b101010, 
                 AND = 6'b101000, OR = 6'b101110, XOR = 6'b100110, XNOR = 6'b101001} ALU_OP; 


always_comb begin
    case(op_code)
        //------ ALU Ops ---------
        
        //add 
        6'h20: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = ADD; 
        end

        // sub
        6'h21: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SUB; 
        end

        // AND
        6'h28: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = AND; 
        end

        // CMPEQ
        6'h24: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPEQ; 
        end

        // CMPLE
        6'h26: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPLTE; 
        end

        // CMPLT
        6'h25: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPLT; 
        end

        // OR
        6'h29: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = OR; 
        end

        // SHL
        6'h2C: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SHL; 
        end

        // SHR
        6'h2D: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SHR; 
        end

        // SRA
        6'h2E: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SRA; 
        end

        // XOR
        6'h2A: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = XOR; 
        end

        // XNOR
        6'h2B: begin
            ASEL = 1'b0;
            BSEL = 1'b0;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = XNOR; 
        end

        //---- ALU OPS WITH CONSTANTS -----
        
        //addc
        6'h30: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = ADD; 
        end

        // subc
        6'h31: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SUB; 
        end

        // ANDC
        6'h38: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = AND; 
        end

        // CMPEQC
        6'h34: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPEQ; 
        end

        // CMPLEC
        6'h36: begin
           ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPLTE; 
        end

        // CMPLTC
        6'h35: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = CMPLT; 
        end

        // ORC
        6'h39: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = OR; 
        end

        // SHLC
        6'h3C: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SHL; 
        end

        // SHRC
        6'h3D: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SHR; 
        end

        // SRAC
        6'h3E: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = SRA; 
        end

        // XORC
        6'h3A: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = XOR; 
        end

        // XNORC
        6'h3B: begin
            ASEL = 1'b0;
            BSEL = 1'b1;
            MOE = 1'b0; 
            MWR = 1'b0; 
            PCSEL = 2'b00; 
            RA2SEL = 1'b0; 
            WASEL = 1'b0; 
            WDSEL = 2'b01;
            WERF = 1'b1; 
            ALUFN = XNOR; 
        end

        // ----- LOAD Instruction -------


        // ----- STORE Instruc

    endcase 
end 
endmodule