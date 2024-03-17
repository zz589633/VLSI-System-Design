`include "RISV_def.svh"
module Control
       (
           input[6:0]Cont_Inst_opcode_i,
           output reg Cont_RegWrite_o,
           output reg Cont_MemWrite_o,
           output reg Cont_MemRead_o,
           output reg Cont_MemtoReg_o,
           output reg Cont_ALUsrc_a_o,
           output reg[1:0] Cont_ALUsrc_b_o,
           output reg Cont_with_imm_o
       );

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
        end
    endcase
end





endmodule
