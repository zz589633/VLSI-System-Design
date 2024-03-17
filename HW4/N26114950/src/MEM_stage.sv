`include "RISV_def.svh"

module MEM_stage
       (
           input clk,
           input rst,
           input WFI,
           input ir_sc_taken,
           input stall_wrap,
           input [6:0]MEM_stage_opcode_i,
           input [31:0]CSR_result_MEM_i,
           input MEM_stage_csr_wr_en_i,
           input [11:0]MEM_stage_csr_addr_i,
           input [3:0]MEM_stage_WEB_i,
           input [31:0]MEM_stage_store_data_i,
           input[2:0]MEM_stage_loadfunc_i,
           input[4:0] MEM_stage_rd_i,
           input MEM_stage_Cont_RegWrite_i,
           input MEM_stage_Cont_MemtoReg_i,
           input[31:0] MEM_stage_ALU_result_i,
           input MEM_stage_MemRead_i,
           input MEM_stage_MemWrite_i,
           output reg MEM_stage_MemRead_o,
           output reg MEM_stage_MemWrite_o,
           output reg[31:0] MEM_stage_ALU_result_o,
           output reg[4:0] MEM_stage_rd_o,
           output reg MEM_stage_Cont_RegWrite_o,
           output reg MEM_stage_Cont_MemtoReg_o,
           output reg[2:0]MEM_stage_loadfunc_o,
           output reg[31:0]MEM_stage_store_data_o,
           output reg[3:0]MEM_stage_WEB_o,
           output reg MEM_stage_csr_wr_en_o,
           output reg[11:0]MEM_stage_csr_addr_o,
           output reg[31:0]CSR_result_MEM_o,
           output reg[6:0]MEM_stage_opcode_o
       );




//pipeline
always_ff@(posedge clk)
begin
    if(rst)
    begin
        MEM_stage_ALU_result_o <= 32'b0;
        MEM_stage_rd_o <= 5'b0;
        MEM_stage_Cont_RegWrite_o <= 1'b0;
        MEM_stage_Cont_MemtoReg_o <= 1'b0;
        MEM_stage_MemRead_o <=1'b0;
        MEM_stage_MemWrite_o <= 1'b0;
        MEM_stage_loadfunc_o <= 2'd0;
        MEM_stage_store_data_o <= 32'd0;
        MEM_stage_WEB_o <= 4'd0;
        MEM_stage_csr_wr_en_o <= 1'd0;
        MEM_stage_csr_addr_o <= 32'd0;
        CSR_result_MEM_o <= 32'd0;
        MEM_stage_opcode_o <= 7'd0;
    end
    else if(stall_wrap || (WFI && ~ir_sc_taken))
    begin
        MEM_stage_ALU_result_o <= MEM_stage_ALU_result_o;
        MEM_stage_rd_o <= MEM_stage_rd_o;
        MEM_stage_Cont_RegWrite_o <= MEM_stage_Cont_RegWrite_o;
        MEM_stage_Cont_MemtoReg_o <= MEM_stage_Cont_MemtoReg_o;
        MEM_stage_MemRead_o <=MEM_stage_MemRead_o;
        MEM_stage_MemWrite_o <= MEM_stage_MemWrite_o;
        MEM_stage_loadfunc_o <= MEM_stage_loadfunc_o;
        MEM_stage_store_data_o <= MEM_stage_store_data_i;
        MEM_stage_WEB_o <= MEM_stage_WEB_o;
        MEM_stage_csr_wr_en_o <= MEM_stage_csr_wr_en_o;
        MEM_stage_csr_addr_o <= MEM_stage_csr_addr_o;
        CSR_result_MEM_o <= CSR_result_MEM_o;
        MEM_stage_opcode_o <= MEM_stage_opcode_o;
    end
    else 
    begin
        MEM_stage_ALU_result_o <= MEM_stage_ALU_result_i;
        MEM_stage_rd_o <= MEM_stage_rd_i;
        MEM_stage_Cont_RegWrite_o <= MEM_stage_Cont_RegWrite_i;
        MEM_stage_Cont_MemtoReg_o <= MEM_stage_Cont_MemtoReg_i;
        MEM_stage_MemRead_o <= MEM_stage_MemRead_i;
        MEM_stage_MemWrite_o <= MEM_stage_MemWrite_i;
        MEM_stage_loadfunc_o <= MEM_stage_loadfunc_i;
        MEM_stage_store_data_o <= MEM_stage_store_data_i;
        MEM_stage_WEB_o <= MEM_stage_WEB_i;
        MEM_stage_csr_wr_en_o <= MEM_stage_csr_wr_en_i;
        MEM_stage_csr_addr_o <= MEM_stage_csr_addr_i;
        CSR_result_MEM_o <= CSR_result_MEM_i;
        MEM_stage_opcode_o <= MEM_stage_opcode_i;
    end

end

endmodule
