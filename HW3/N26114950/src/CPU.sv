`include "RISV_def.svh"
`include "IF_stage.sv"
`include "ID_stage.sv"
`include "EX_stage.sv"
`include "MEM_stage.sv"
`include "WB_stage.sv"
module CPU
       (
           input clk,
           input rst,
           input stall_wrap,
           input[31:0] CPU_IM1_Inst_i,
           input[31:0] CPU_DM1_DO_i,
           output[31:0] CPU_PC_o,               //for IM1
           output CPU_MemRead_o,                //for DM1
           output CPU_MemWrite_o,
           output[31:0] CPU_ALU_result_o,       //for DM1
           output[31:0]CPU_DM1_DI_o,             //for DM1
           output[2:0]cache_type_o
       );

//IF_stage wire
wire[31:0]IF_stage_pc,IM_addr,IF_stage_pc_add4;

//ID_stage wire
wire ID_stage_Cont_RegWrite,ID_stage_Cont_MemWrite,ID_stage_Cont_MemRead,ID_stage_Cont_MemtoReg;
wire[1:0]ID_stage_Cont_ALUsrc_b;
wire ID_stage_Cont_ALUsrc_a;
wire[31:0] ID_stage_Regfile_ra_value,ID_stage_Regfile_rb_value;
wire[4:0] ID_stage_Regfile_ra,ID_stage_Regfile_rb,ID_stage_rd;
wire[31:0] ID_stage_immgen_Itype_imm,ID_stage_immgen_Stype_imm,ID_stage_immgen_Utype_imm;
wire[31:0] ID_stage_pc,ID_stage_pc_add4;
wire[6:0] ID_stage_opcode;
wire[3:0] ID_stage_func;
wire ID_stage_hd_PCWrite,ID_stage_hd_IFpip_Write,ID_stage_Bran_c_jump,ID_stage_Bran_c_branch_taken;
wire[31:0] ID_stage_Bran_c_branch_target,ID_stage_Bran_c_new_rd_value;
wire IF_stage_branch,ID_stage_with_imm,IF_stage_jump;
wire[63:0]instret,cycle;
wire[11:0]ID_stage_CSR_imm12;
wire hd_stall;

//EX_stage wire
wire[4:0]EX_stage_rd;
wire EX_stage_Cont_RegWrite,EX_stage_Cont_MemWrite,EX_stage_Cont_MemRead,EX_stage_Cont_MemtoReg;
wire[31:0]EX_stage_store_data,EX_stage_ALU_result;
wire[3:0]EX_stage_WEB;
wire[1:0]EX_stage_ForwardC,EX_stage_ForwardD;
wire[2:0]EX_stage_loadfunc;

//MEM_stage wire
wire[31:0]MEM_stage_ALU_result,MEM_stage_store_data;
wire[4:0]MEM_stage_rd;
wire MEM_stage_Cont_RegWrite,MEM_stage_Cont_MemtoReg;
wire MEM_stage_MemRead,MEM_stage_MemWrite;
wire[2:0]MEM_stage_loadfunc;
wire[3:0]MEM_stage_WEB;
//WB_stage wire
wire[31:0]WB_stage_Writeback_data;
wire[4:0]WB_stage_rd;
wire WB_stage_Cont_RegWrite;
//--------------------------------------------

IF_stage u_IF_stage
         (
             .clk(clk),
             .rst(rst),
             .stall_wrap(stall_wrap),
             .IF_stage_PCSrc_i(ID_stage_Bran_c_branch_taken),
             .IF_stage_target_i(ID_stage_Bran_c_branch_target),
             .IF_stage_hd_PCWrite_i(ID_stage_hd_PCWrite),
             .IF_stage_hd_Write_i(ID_stage_hd_IFpip_Write),
             .IF_stage_pc_o(IF_stage_pc),
		     .IF_stage_pc_add4_o(IF_stage_pc_add4),
             .IM_addr(IM_addr)
         );

ID_stage u_ID_stage
         (
             .clk(clk),
             .rst(rst),
             .IM_addr(IM_addr),
             .stall_wrap(stall_wrap),
             .ID_stage_pc_i(IF_stage_pc),
	         .ID_stage_pc_add4_i(IF_stage_pc_add4),
             .ID_stage_Inst_i(CPU_IM1_Inst_i),  //comes from IM1_Inst_o
             .ID_stage_Writeback_data_i(WB_stage_Writeback_data),
             .ID_stage_Writeback_rd_i(WB_stage_rd),
             .ID_stage_ForwardC_i(EX_stage_ForwardC),
             .ID_stage_ForwardD_i(EX_stage_ForwardD),
             .EX_stage_ALU_result_i(EX_stage_ALU_result),
             .EX_stage_rd_i(EX_stage_rd),
             .ID_stage_RegWrite_i(ID_stage_Cont_RegWrite),
             .EX_stage_MemRead_i(EX_stage_Cont_MemRead),
             .WB_stage_RegWrite_i(WB_stage_Cont_RegWrite),
             .WB_stage_Writeback_data_i(WB_stage_Writeback_data),
             .ID_stage_Cont_RegWrite_o(ID_stage_Cont_RegWrite),
             .ID_stage_Cont_MemWrite_o(ID_stage_Cont_MemWrite),
             .ID_stage_Cont_MemRead_o(ID_stage_Cont_MemRead),
             .ID_stage_Cont_MemtoReg_o(ID_stage_Cont_MemtoReg),
             .ID_stage_Cont_ALUsrc_a_o(ID_stage_Cont_ALUsrc_a),
             .ID_stage_Cont_ALUsrc_b_o(ID_stage_Cont_ALUsrc_b),
             .ID_stage_Regfile_ra_value_o(ID_stage_Regfile_ra_value),
             .ID_stage_Regfile_rb_value_o(ID_stage_Regfile_rb_value),
             .ID_stage_Regfile_ra_o(ID_stage_Regfile_ra),
             .ID_stage_Regfile_rb_o(ID_stage_Regfile_rb),
             .ID_stage_rd_o(ID_stage_rd),
             .ID_stage_immgen_Itype_imm_o(ID_stage_immgen_Itype_imm),
             .ID_stage_immgen_Stype_imm_o(ID_stage_immgen_Stype_imm),
             .ID_stage_immgen_Utype_imm_o(ID_stage_immgen_Utype_imm),
             .ID_stage_pc_o(ID_stage_pc),
             .ID_stage_opcode_o(ID_stage_opcode),
             .ID_stage_func_o(ID_stage_func),
             .ID_stage_hd_PCWrite_o(ID_stage_hd_PCWrite),
             .ID_stage_hd_IFpip_Write_o(ID_stage_hd_IFpip_Write),
             .ID_stage_Bran_c_jump_o(ID_stage_Bran_c_jump),
             .ID_stage_Bran_c_branch_taken_o(ID_stage_Bran_c_branch_taken),
             .ID_stage_Bran_c_branch_target_o(ID_stage_Bran_c_branch_target),
             .IF_stage_branch_o(IF_stage_branch),
             .ID_stage_with_imm_o(ID_stage_with_imm),
             .IF_stage_jump_o(IF_stage_jump),
             .instret_o(instret),
             .cycle_o(cycle),
             .ID_stage_CSR_imm12_o(ID_stage_CSR_imm12),
		     .ID_stage_pc_add4_o(ID_stage_pc_add4)
         );


EX_stage u_EX_stage
         (
             .clk(clk),
             .rst(rst),
             .stall_wrap(stall_wrap),
		     .EX_stage_pc_add4_i(ID_stage_pc_add4),
             .EX_stage_rd_i(ID_stage_rd),
             .EX_stage_opcode_i(ID_stage_opcode),
             .EX_stage_func_i(ID_stage_func),
             .EX_stage_Cont_RegWrite_i(ID_stage_Cont_RegWrite),
             .EX_stage_Cont_MemWrite_i(ID_stage_Cont_MemWrite),
             .EX_stage_Cont_MemRead_i(ID_stage_Cont_MemRead),
             .EX_stage_Cont_MemtoReg_i(ID_stage_Cont_MemtoReg),
             .EX_stage_Cont_ALUsrc_a_i(ID_stage_Cont_ALUsrc_a),
             .EX_stage_Cont_ALUsrc_b_i(ID_stage_Cont_ALUsrc_b),
             .EX_stage_Regfile_ra_value_i(ID_stage_Regfile_ra_value),
             .EX_stage_Regfile_rb_value_i(ID_stage_Regfile_rb_value),
             .EX_stage_Regfile_ra_i(ID_stage_Regfile_ra),
             .EX_stage_Regfile_rb_i(ID_stage_Regfile_rb),
             .EX_stage_immgen_Itype_imm_i(ID_stage_immgen_Itype_imm),
             .EX_stage_immgen_Stype_imm_i(ID_stage_immgen_Stype_imm),
             .EX_stage_immgen_Utype_imm_i(ID_stage_immgen_Utype_imm),
             .MEM_stage_RegWrite_i(MEM_stage_Cont_RegWrite),
             .MEM_stage_rd_i(MEM_stage_rd),
             .EX_stage_Bran_c_jump_i(ID_stage_Bran_c_jump),
             .IF_stage_ra_i(CPU_IM1_Inst_i[19:15]),
             .IF_stage_rb_i(CPU_IM1_Inst_i[24:20]),
             .IF_stage_branch_i(IF_stage_branch),
             .EX_stage_PC_i(ID_stage_pc),
             .ID_stage_with_imm_i(ID_stage_with_imm),
             .IF_stage_jump_i(IF_stage_jump),
             .WB_stage_Writeback_data_i(WB_stage_Writeback_data),
             .instret_i(instret),
             .cycle_i(cycle),
             .EX_stage_CSR_imm12_i(ID_stage_CSR_imm12),
             .EX_stage_rd_o(EX_stage_rd),
             .EX_stage_Cont_RegWrite_o(EX_stage_Cont_RegWrite),
             .EX_stage_Cont_MemWrite_o(EX_stage_Cont_MemWrite),
             .EX_stage_Cont_MemRead_o(EX_stage_Cont_MemRead),
             .EX_stage_Cont_MemtoReg_o(EX_stage_Cont_MemtoReg),
             .EX_stage_store_data_o(EX_stage_store_data),
             .EX_stage_ALU_result_o(EX_stage_ALU_result),
             .EX_stage_WEB_o(EX_stage_WEB),
             .EX_stage_ForwardC_o(EX_stage_ForwardC),
             .EX_stage_ForwardD_o(EX_stage_ForwardD),
             .EX_stage_loadfunc_o(EX_stage_loadfunc),
             .cache_type_o(cache_type_o)
         );

MEM_stage u_MEM_stage
          (
              .clk(clk),
              .rst(rst),
              .stall_wrap(stall_wrap),
              .MEM_stage_WEB_i(EX_stage_WEB),
              .MEM_stage_store_data_i(EX_stage_store_data),
              .MEM_stage_loadfunc_i(EX_stage_loadfunc),
              .MEM_stage_rd_i(EX_stage_rd),
              .MEM_stage_Cont_RegWrite_i(EX_stage_Cont_RegWrite),
              .MEM_stage_Cont_MemtoReg_i(EX_stage_Cont_MemtoReg),
              .MEM_stage_ALU_result_i(EX_stage_ALU_result),
              .MEM_stage_MemRead_i(EX_stage_Cont_MemRead),
              .MEM_stage_MemWrite_i(EX_stage_Cont_MemWrite),
              .MEM_stage_MemRead_o(MEM_stage_MemRead),
              .MEM_stage_MemWrite_o(MEM_stage_MemWrite),
              .MEM_stage_ALU_result_o(MEM_stage_ALU_result),
              .MEM_stage_rd_o(MEM_stage_rd),
              .MEM_stage_Cont_RegWrite_o(MEM_stage_Cont_RegWrite),
              .MEM_stage_Cont_MemtoReg_o(MEM_stage_Cont_MemtoReg),
              .MEM_stage_loadfunc_o(MEM_stage_loadfunc),
              .MEM_stage_store_data_o(MEM_stage_store_data),
              .MEM_stage_WEB_o(MEM_stage_WEB)
          );

WB_stage u_WB_stage
         (
             .WB_stage_loadfunc_i(MEM_stage_loadfunc),
             .WB_stage_DM_data_i(CPU_DM1_DO_i),
             .WB_stage_ALU_result_i(MEM_stage_ALU_result),
             .WB_stage_rd_i(MEM_stage_rd),
             .WB_stage_Cont_RegWrite_i(MEM_stage_Cont_RegWrite),
             .WB_stage_Cont_MemtoReg_i(MEM_stage_Cont_MemtoReg),
             .WB_stage_Writeback_data_o(WB_stage_Writeback_data),
             .WB_stage_rd_o(WB_stage_rd),
             .WB_stage_Cont_RegWrite_o(WB_stage_Cont_RegWrite)
         );

assign CPU_PC_o=IM_addr;
assign CPU_MemRead_o=EX_stage_Cont_MemRead;
assign CPU_ALU_result_o=EX_stage_ALU_result;
assign CPU_DM1_DI_o=EX_stage_store_data;
assign CPU_MemWrite_o=EX_stage_Cont_MemWrite;

endmodule

