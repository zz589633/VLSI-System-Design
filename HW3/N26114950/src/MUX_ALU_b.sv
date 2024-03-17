`include "RISV_def.svh"
module MUX_ALU_b
       (
           input [1:0]MUX_ALU_ALUsrc_b_i,
           input [31:0]MUX_ALU_rb_value_i,
           input [31:0]MUX_ALU_Itype_imm_i,
           input [31:0]MUX_ALU_Stype_imm_i,
           input [31:0]MUX_ALU_Utype_imm_i,
           output reg[31:0]MUX_ALU_b_source_o
       );


always@(*)
begin
    case(MUX_ALU_ALUsrc_b_i)
        2'b00:
            MUX_ALU_b_source_o = MUX_ALU_rb_value_i;
        2'b01:
            MUX_ALU_b_source_o = MUX_ALU_Itype_imm_i;
        2'b10:
            MUX_ALU_b_source_o = MUX_ALU_Stype_imm_i;
        2'b11:
            MUX_ALU_b_source_o = MUX_ALU_Utype_imm_i;
    endcase
end



endmodule

