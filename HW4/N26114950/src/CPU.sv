`include "RISV_def.svh"
`include "IF_stage.sv"
`include "ID_stage.sv"
`include "EX_stage.sv"
`include "MEM_stage.sv"
`include "WB_stage.sv"
`include "interrupt_unit.sv"
module CPU
       (
           input clk,
           input rst,
           input interrupt_sc,
           input interrupt_wdt,
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
wire[31:0]imm_for_csr,csr_rs;
wire ID_stage_csr_wr_en;
wire[11:0]ID_stage_csr_addr;
wire MEIE,MTIE,MRET,WFI;
wire[31:0]mtvec_pc,mepc_pc;
//EX_stage wire
wire[4:0]EX_stage_rd;
wire EX_stage_Cont_RegWrite,EX_stage_Cont_MemWrite,EX_stage_Cont_MemRead,EX_stage_Cont_MemtoReg;
wire[31:0]EX_stage_store_data,EX_stage_ALU_result;
wire[3:0]EX_stage_WEB;
wire[1:0]EX_stage_ForwardC,EX_stage_ForwardD;
wire[2:0]EX_stage_loadfunc;
wire EX_stage_csr_wr_en;
wire[31:0]CSR_result_EXE;
wire[11:0]EX_stage_csr_addr;
wire[6:0]EX_stage_opcode;

//MEM_stage wire
wire[31:0]MEM_stage_ALU_result,MEM_stage_store_data;
wire[4:0]MEM_stage_rd;
wire MEM_stage_Cont_RegWrite,MEM_stage_Cont_MemtoReg;
wire MEM_stage_MemRead,MEM_stage_MemWrite;
wire[2:0]MEM_stage_loadfunc;
wire[3:0]MEM_stage_WEB;
wire MEM_stage_csr_wr_en;
wire[31:0]CSR_result_MEM;
wire[11:0]MEM_stage_csr_addr;
wire[6:0]MEM_stage_opcode;
//WB_stage wire
wire[31:0]WB_stage_Writeback_data;
wire[4:0]WB_stage_rd;
wire WB_stage_Cont_RegWrite;
//interrupt_unit wire 
wire ir_sc_taken,ir_wdt_taken;
//--------------------------------------------

IF_stage u_IF_stage
         (
             .clk(clk),
             .rst(rst),
             .WFI(WFI),
             .ir_sc_taken(ir_sc_taken),
             .ir_wdt_taken(ir_wdt_taken),
             .MRET(MRET),
             .mtvec_pc(mtvec_pc),
             .mepc_pc(mepc_pc),
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
             .ir_sc_taken(ir_sc_taken),
             .ir_wdt_taken(ir_wdt_taken), 
             .IM_addr(IM_addr),
             .stall_wrap(stall_wrap),
             .csr_rd_addr(MEM_stage_csr_addr),
             .WB_csr_wr_en(MEM_stage_csr_wr_en),
             .csr_in(CSR_result_MEM),
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
		     .ID_stage_pc_add4_o(ID_stage_pc_add4),
             .imm_for_csr_o(imm_for_csr),
             .ID_stage_csr_wr_en_o(ID_stage_csr_wr_en),
             .ID_stage_csr_addr_o(ID_stage_csr_addr),
             .ID_stage_csr_src_o(csr_rs),
             .hd_stall(hd_stall),
             .MIE(MIE),
             .MEIE(MEIE),
             .MTIE(MTIE),
             .mtvec_pc(mtvec_pc),
             .mepc_pc(mepc_pc),
             .MRET(MRET),
             .WFI(WFI)
         );


EX_stage u_EX_stage
         (
             .clk(clk),
             .rst(rst),
             .WFI(WFI),
             .ir_sc_taken(ir_sc_taken),
             .stall_wrap(stall_wrap),
             .opcode_EXE(ID_stage_opcode),
             .opcode_MEM(EX_stage_opcode),
             .opcode_WB(MEM_stage_opcode),
             .csr_addr_EXE(ID_stage_csr_addr),
             .csr_addr_MEM(EX_stage_csr_addr),
             .csr_addr_WB(MEM_stage_csr_addr),
             .CSR_result_MEM(CSR_result_EXE),
             .CSR_result_WB(CSR_result_MEM),
             .csr_rs(csr_rs),
             .imm_for_csr(imm_for_csr),
             .EX_stage_csr_wr_en_i(ID_stage_csr_wr_en),
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
             .cache_type_o(cache_type_o),
             .EX_stage_csr_wr_en_o(EX_stage_csr_wr_en),
             .EX_stage_csr_addr_o(EX_stage_csr_addr),
             .CSR_result_EXE_o(CSR_result_EXE),
             .EX_stage_opcode_o(EX_stage_opcode)
         );

MEM_stage u_MEM_stage
          (
              .clk(clk),
              .rst(rst),
              .WFI(WFI),
              .ir_sc_taken(ir_sc_taken),
              .stall_wrap(stall_wrap),
              .MEM_stage_opcode_i(EX_stage_opcode),
              .CSR_result_MEM_i(CSR_result_EXE),
              .MEM_stage_csr_wr_en_i(EX_stage_csr_wr_en),
              .MEM_stage_csr_addr_i(EX_stage_csr_addr),
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
              .MEM_stage_WEB_o(MEM_stage_WEB),
              .MEM_stage_csr_wr_en_o(MEM_stage_csr_wr_en),
              .MEM_stage_csr_addr_o(MEM_stage_csr_addr),
              .CSR_result_MEM_o(CSR_result_MEM),
              .MEM_stage_opcode_o(MEM_stage_opcode)
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

interrupt_unit u_interrupt_unit
         (
            .clk(clk),
            .rst(rst),
            .stall_wrap(stall_wrap),
            .hd_stall(hd_stall),
            .WFI(WFI),
            .MIE(MIE),
            .MEIE(MEIE),
            .MTIE(MTIE),
            .interrupt_sc(interrupt_sc),
            .interrupt_wdt(interrupt_wdt),
            .ir_sc_taken(ir_sc_taken),
            .ir_wdt_taken(ir_wdt_taken)
         );

assign CPU_PC_o=IM_addr;
assign CPU_MemRead_o=EX_stage_Cont_MemRead;
assign CPU_ALU_result_o=EX_stage_ALU_result;
assign CPU_DM1_DI_o=EX_stage_store_data;
assign CPU_MemWrite_o=EX_stage_Cont_MemWrite;

endmodule

