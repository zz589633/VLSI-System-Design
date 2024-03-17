`include "RISV_def.svh"

module MEM_stage
       (
           input clk,
           input rst,
           input[2:0]MEM_stage_loadfunc_i,
           input[4:0] MEM_stage_rd_i,
           input MEM_stage_Cont_RegWrite_i,
           input MEM_stage_Cont_MemtoReg_i,
           input[31:0] MEM_stage_ALU_result_i,
           input MEM_stage_MemRead_i,
           output reg MEM_stage_MemRead_o,
           output reg[31:0] MEM_stage_ALU_result_o,
           output reg[4:0] MEM_stage_rd_o,
           output reg MEM_stage_Cont_RegWrite_o,
           output reg MEM_stage_Cont_MemtoReg_o,
           output reg[2:0]MEM_stage_loadfunc_o
       );




//pipeline
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        MEM_stage_ALU_result_o <= 32'b0;
        MEM_stage_rd_o <= 5'b0;
        MEM_stage_Cont_RegWrite_o <= 1'b0;
        MEM_stage_Cont_MemtoReg_o <= 1'b0;
        MEM_stage_MemRead_o <=1'b0;
        MEM_stage_loadfunc_o <= 2'd0;
    end
    else //(~stall)
    begin
        MEM_stage_ALU_result_o <= MEM_stage_ALU_result_i;
        MEM_stage_rd_o <= MEM_stage_rd_i;
        MEM_stage_Cont_RegWrite_o <= MEM_stage_Cont_RegWrite_i;
        MEM_stage_Cont_MemtoReg_o <= MEM_stage_Cont_MemtoReg_i;
        MEM_stage_MemRead_o <= MEM_stage_MemRead_i;
        MEM_stage_loadfunc_o <= MEM_stage_loadfunc_i;
    end

end

endmodule
