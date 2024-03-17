`include "RISV_def.svh"
module imm_gen
       (
           input [31:0]imm_gen_Inst_i,
           output reg[31:0]imm_gen_Itype_imm_o,
           output reg[31:0]imm_gen_Stype_imm_o,
           output reg[31:0]imm_gen_Btype_imm_o,
           output reg[31:0]imm_gen_Utype_imm_o,
           output reg[31:0]imm_gen_Jtype_imm_o
       );

//sign extension and generate Imm for each Inst.
always_comb
begin
    imm_gen_Itype_imm_o={{20{imm_gen_Inst_i[31]}},imm_gen_Inst_i[31:20]}; //12bit
    imm_gen_Stype_imm_o={{20{imm_gen_Inst_i[31]}},imm_gen_Inst_i[31:25],imm_gen_Inst_i[11:7]}; //12bit
    imm_gen_Btype_imm_o={{19{imm_gen_Inst_i[31]}}, imm_gen_Inst_i[31], imm_gen_Inst_i[7], imm_gen_Inst_i[30:25], imm_gen_Inst_i[11:8], 1'b0}; //12bit
    imm_gen_Utype_imm_o={imm_gen_Inst_i[31:12],12'b0};  //20bit
    imm_gen_Jtype_imm_o={{12{imm_gen_Inst_i[31]}}, imm_gen_Inst_i[19:12], imm_gen_Inst_i[20], imm_gen_Inst_i[30:21],1'b0}; //20bit
end



endmodule
