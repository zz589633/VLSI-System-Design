`include "RISV_def.svh"
module Control
       (
           input[6:0]Cont_Inst_opcode_i,
           input[2:0]Cont_Inst_func_i,
           input[31:0]Cont_Inst_i,
           output reg Cont_RegWrite_o,
           output reg Cont_MemWrite_o,
           output reg Cont_MemRead_o,
           output reg Cont_MemtoReg_o,
           output reg Cont_ALUsrc_a_o,
           output reg[1:0] Cont_ALUsrc_b_o,
           output reg Cont_with_imm_o,
           output reg csr_wr_en_o,
           output MRET,
           output WFI
       );


assign MRET = (Cont_Inst_i == 32'h3020_0073)? 1'b1 : 1'b0;
assign WFI = (Cont_Inst_i == 32'h1050_0073)? 1'b1 : 1'b0;

always_comb
begin
    case(Cont_Inst_opcode_i)
        `Rtype_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b00;
            Cont_with_imm_o = 1'b0;
            csr_wr_en_o = 1'd0;
        end
        `Itype_opcode_imm12:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b01;
            Cont_with_imm_o = 1'b1;
            csr_wr_en_o = 1'd0;
        end
        `Itype_load_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b1;
            Cont_MemtoReg_o = 1'b1;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b01;
            Cont_with_imm_o = 1'b1;  //1'b0
            csr_wr_en_o = 1'd0;
        end
        `Stype_store_opcode:
        begin
            Cont_RegWrite_o = 1'b0;
            Cont_MemWrite_o = 1'b1;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b10;
            Cont_with_imm_o = 1'b1;
            csr_wr_en_o = 1'd0;
        end
        `Utype_AUIPC_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b1;
            Cont_ALUsrc_b_o = 2'b11;
            Cont_with_imm_o = 1'b0;
            csr_wr_en_o = 1'd0;
        end
        `Utype_LUI_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b11;
            Cont_with_imm_o = 1'b0;
            csr_wr_en_o = 1'd0;
        end
        `JALR_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b00;
            Cont_with_imm_o = 1'b1;
            csr_wr_en_o = 1'd0;
        end
        `JAL_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b00;
            Cont_with_imm_o = 1'b1;
            csr_wr_en_o = 1'd0;
        end
        `Btype_opcode:
        begin
            Cont_RegWrite_o = 1'b0;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b00;
            Cont_with_imm_o = 1'b0;
            csr_wr_en_o = 1'd0;
        end
        `CSR_opcode:
        begin
            Cont_RegWrite_o = 1'b1;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b00;
            Cont_with_imm_o = 1'b1;
            csr_wr_en_o = (Cont_Inst_func_i==3'b000)? 1'd0 : 1'd1;
        end
        default:
        begin
            Cont_RegWrite_o = 1'b0;
            Cont_MemWrite_o = 1'b0;
            Cont_MemRead_o = 1'b0;
            Cont_MemtoReg_o = 1'b0;
            Cont_ALUsrc_a_o = 1'b0;
            Cont_ALUsrc_b_o = 2'b0;
            Cont_with_imm_o = 1'b0;
            csr_wr_en_o = 1'd0;
        end
    endcase
end





endmodule
