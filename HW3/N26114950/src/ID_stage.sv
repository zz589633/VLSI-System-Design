`include "RISV_def.svh"
`include "Branch_control.sv"
`include "Control.sv"
`include "Regfile.sv"
`include "imm_gen.sv"
`include "hazard_detect.sv"
module ID_stage
       (
           input clk,
           input rst,
           input[31:0]IM_addr,
           input stall_wrap,
           input[31:0]ID_stage_pc_i,
	       input[31:0]ID_stage_pc_add4_i,
           input[31:0]ID_stage_Inst_i,  //comes from IM1_Inst_o
           input[31:0]ID_stage_Writeback_data_i,
           input[4:0]ID_stage_Writeback_rd_i,
           input[1:0] ID_stage_ForwardC_i,
           input[1:0] ID_stage_ForwardD_i,
           input[31:0] EX_stage_ALU_result_i,
           input[4:0] EX_stage_rd_i,
           input ID_stage_RegWrite_i,
           input EX_stage_MemRead_i,
           input WB_stage_RegWrite_i,
           input [31:0]WB_stage_Writeback_data_i,
           output reg ID_stage_Cont_RegWrite_o,
           output reg ID_stage_Cont_MemWrite_o,
           output reg ID_stage_Cont_MemRead_o,
           output reg ID_stage_Cont_MemtoReg_o,
           output reg ID_stage_Cont_ALUsrc_a_o,
           output reg[1:0]ID_stage_Cont_ALUsrc_b_o,
           output reg[31:0]ID_stage_Regfile_ra_value_o,
           output reg[31:0]ID_stage_Regfile_rb_value_o,
           output reg[4:0]ID_stage_Regfile_ra_o,
           output reg[4:0]ID_stage_Regfile_rb_o,
           output reg[4:0]ID_stage_rd_o,
           output reg[31:0]ID_stage_immgen_Itype_imm_o,
           output reg[31:0]ID_stage_immgen_Stype_imm_o,
           output reg[31:0]ID_stage_immgen_Utype_imm_o,
           output reg[31:0]ID_stage_pc_o,
           output reg[6:0]ID_stage_opcode_o,
           output reg[3:0]ID_stage_func_o,
           output ID_stage_hd_PCWrite_o,
           output ID_stage_hd_IFpip_Write_o,
           output reg ID_stage_Bran_c_jump_o,
           output ID_stage_Bran_c_branch_taken_o,
           output[31:0] ID_stage_Bran_c_branch_target_o,
           output  IF_stage_branch_o,
           output reg ID_stage_with_imm_o,
           output IF_stage_jump_o,
           output reg [63:0]instret_o,
           output reg [63:0]cycle_o,
           output reg [11:0]ID_stage_CSR_imm12_o,
	       output reg [31:0]ID_stage_pc_add4_o
       );

wire Cont_RegWrite,Cont_MemWrite,Cont_MemRead,Cont_MemtoReg;
wire Cont_ALUsrc_a;
wire [1:0]Cont_ALUsrc_b;
wire [31:0]Regfile_ra_value,Regfile_rb_value;
wire [31:0]imm_gen_Itype_imm,imm_gen_Stype_imm;
wire [31:0]imm_gen_Utype_imm,imm_gen_Btype_imm,imm_gen_Jtype_imm;
wire Bran_c_jump,Bran_c_flush;
wire[31:0]ID_stage_Inst;
wire Cont_with_imm;


reg initial0;


//deal with Inst. flush
assign ID_stage_Inst = (initial0||Bran_c_flush)? 32'd0:ID_stage_Inst_i;

wire IM1_branch;

assign IM1_branch=(ID_stage_Inst[6:0]==`Btype_opcode);
wire IF_jalr;
assign IF_jalr=(ID_stage_Inst[6:0]==`JALR_opcode);

assign IF_stage_jump_o=Bran_c_jump;
assign IF_stage_branch_o=IM1_branch;

//solve Mem error
always_ff@(posedge clk or posedge rst)
begin
	if(rst)
	    initial0 <= 1'd1;
	else
	    initial0 <= 1'd0;
end



//forwardC,D
wire[31:0]ra,rb;
assign ra=(ID_stage_ForwardC_i==2'b01)?EX_stage_ALU_result_i:
          (ID_stage_ForwardC_i==2'b10)?WB_stage_Writeback_data_i:Regfile_ra_value;
assign rb=(ID_stage_ForwardD_i==2'b01)?EX_stage_ALU_result_i:
          (ID_stage_ForwardD_i==2'b10)?WB_stage_Writeback_data_i:Regfile_rb_value;

Branch_control u_Branch_control
               (    
                   .clk(clk),
                   .rst(rst),
                   .stall_wrap(stall_wrap),
                   .Bran_c_hd_stall_i(hd_stall),
                   .Bran_c_func_i(ID_stage_Inst[14:12]),
                   .Bran_c_Opcode_i(ID_stage_Inst[6:0]),
                   .Bran_c_bimm12_i(imm_gen_Btype_imm),
                   .Bran_c_jimm12_i(imm_gen_Itype_imm),
                   .Bran_c_jimm20_i(imm_gen_Jtype_imm),
                   .Bran_c_pc_i(ID_stage_pc_i),
                   .Bran_c_ra_i(ra),
                   .Bran_c_rb_i(rb),
                   .Bran_c_jump_o(Bran_c_jump),
                   .Bran_c_branch_taken_o(ID_stage_Bran_c_branch_taken_o),
                   .Bran_c_branch_target_o(ID_stage_Bran_c_branch_target_o),
                   .Bran_c_flush_o(Bran_c_flush)
               );

Control u_Control
        (
            .Cont_Inst_opcode_i(ID_stage_Inst[6:0]),
            .Cont_RegWrite_o(Cont_RegWrite),
            .Cont_MemWrite_o(Cont_MemWrite),
            .Cont_MemRead_o(Cont_MemRead),
            .Cont_MemtoReg_o(Cont_MemtoReg),
            .Cont_ALUsrc_a_o(Cont_ALUsrc_a),
            .Cont_ALUsrc_b_o(Cont_ALUsrc_b),
            .Cont_with_imm_o(Cont_with_imm)
        );
Regfile u_Regfile
        (
            .clk(clk),
            .rst(rst),
            .RegWrite(WB_stage_RegWrite_i),
            .ra_i(ID_stage_Inst[19:15]),
            .rb_i(ID_stage_Inst[24:20]),
            .rd_i(ID_stage_Writeback_rd_i),
            .rd_value_i(ID_stage_Writeback_data_i),
            .ra_value_o(Regfile_ra_value),
            .rb_value_o(Regfile_rb_value)
        );
imm_gen u_imm_gen
        (
            .imm_gen_Inst_i(ID_stage_Inst),
            .imm_gen_Itype_imm_o(imm_gen_Itype_imm),
            .imm_gen_Stype_imm_o(imm_gen_Stype_imm),
            .imm_gen_Btype_imm_o(imm_gen_Btype_imm),
            .imm_gen_Utype_imm_o(imm_gen_Utype_imm),
            .imm_gen_Jtype_imm_o(imm_gen_Jtype_imm)
        );

hazard_detect u_hazard_detect
              (
                  .stall_wrap(stall_wrap),
                  .hd_IF_ra_i(ID_stage_Inst[19:15]),
                  .hd_IF_rb_i(ID_stage_Inst[24:20]),
                  .hd_ID_rd_i(ID_stage_rd_o),
                  .hd_EX_rd_i(EX_stage_rd_i),
                  .hd_IF_branch_i(IM1_branch),
                  .hd_IF_jalr_i(IF_jalr),
                  .hd_ID_MemRead_i(ID_stage_Cont_MemRead_o),
                  .hd_ID_RegWrite_i(ID_stage_RegWrite_i),
                  .hd_EX_MemRead_i(EX_stage_MemRead_i),
                  .hd_PCWrite_o(ID_stage_hd_PCWrite_o),
                  .hd_IF_stage_Write_o(ID_stage_hd_IFpip_Write_o),
                  .hd_stall_o(hd_stall)
              );



reg[63:0]cycle;
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        cycle <= 64'd0;
    end
    else
    begin
        cycle <= cycle + 64'd1;
    end
end

reg[63:0]csr;
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        csr <= 64'd0;
    end
    else if(~hd_stall && ~stall_wrap && ~Bran_c_flush)
    begin
        csr <= csr + 64'd1;
    end
    else 
    begin
        csr <= csr;
    end
end

reg[63:0]stall_cnt;
always_ff@(posedge clk or posedge rst)
if(rst)
    stall_cnt <= 64'd0;
else if(stall_wrap)
    stall_cnt <= stall_cnt + 64'd1;
else
    stall_cnt <= stall_cnt;

    
//pipeline
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        ID_stage_Cont_RegWrite_o <= 1'd0;
        ID_stage_Cont_MemWrite_o <= 1'd0;
        ID_stage_Cont_MemRead_o <= 1'd0;
        ID_stage_Cont_MemtoReg_o <= 1'd0;
        ID_stage_Cont_ALUsrc_a_o <= 1'd0;
        ID_stage_Cont_ALUsrc_b_o <= 2'b00;
        ID_stage_Regfile_ra_value_o <= 32'd0;
        ID_stage_Regfile_rb_value_o <= 32'd0;
        ID_stage_Regfile_ra_o <= 5'd0;
        ID_stage_Regfile_rb_o <= 5'd0;
        ID_stage_rd_o <= 5'd0;
        ID_stage_immgen_Itype_imm_o <= 32'd0;
        ID_stage_immgen_Stype_imm_o <= 32'd0;
        ID_stage_immgen_Utype_imm_o <= 32'd0;
        ID_stage_pc_o <= 32'd0;
        ID_stage_opcode_o <= 7'd0;
        ID_stage_func_o <= 4'd0;
        ID_stage_Bran_c_jump_o <= 1'b0;
        ID_stage_with_imm_o <=1'b0;
        instret_o <= 64'd0;
        cycle_o <= 64'd0;
        ID_stage_CSR_imm12_o <= 12'd0;
	    ID_stage_pc_add4_o<= 32'd0;
    end 
    else if(stall_wrap)
    begin
        ID_stage_Cont_RegWrite_o <= ID_stage_Cont_RegWrite_o;
        ID_stage_Cont_MemWrite_o <= ID_stage_Cont_MemWrite_o;
        ID_stage_Cont_MemRead_o <= ID_stage_Cont_MemRead_o;
        ID_stage_Cont_MemtoReg_o <= ID_stage_Cont_MemtoReg_o;
        ID_stage_Cont_ALUsrc_a_o <= ID_stage_Cont_ALUsrc_a_o;
        ID_stage_Cont_ALUsrc_b_o <= ID_stage_Cont_ALUsrc_b_o;
        ID_stage_Regfile_ra_value_o <= ID_stage_Regfile_ra_value_o;
        ID_stage_Regfile_rb_value_o <= ID_stage_Regfile_rb_value_o;
        ID_stage_Regfile_ra_o <= ID_stage_Regfile_ra_o;
        ID_stage_Regfile_rb_o <= ID_stage_Regfile_rb_o;
        ID_stage_rd_o <= ID_stage_rd_o;
        ID_stage_immgen_Itype_imm_o <= ID_stage_immgen_Itype_imm_o;
        ID_stage_immgen_Stype_imm_o <= ID_stage_immgen_Stype_imm_o;
        ID_stage_immgen_Utype_imm_o <= ID_stage_immgen_Utype_imm_o;
        ID_stage_pc_o <= ID_stage_pc_o;
        ID_stage_opcode_o <= ID_stage_opcode_o;
        ID_stage_func_o <= ID_stage_func_o;
        ID_stage_Bran_c_jump_o <= ID_stage_Bran_c_jump_o;
        ID_stage_with_imm_o <=ID_stage_with_imm_o;
        instret_o <= instret_o;
        cycle_o <= cycle_o;
        ID_stage_CSR_imm12_o <= ID_stage_CSR_imm12_o;
	    ID_stage_pc_add4_o<= ID_stage_pc_add4_o;
    end 
    else if(hd_stall)
    begin
        ID_stage_Cont_RegWrite_o <= 1'd0;
        ID_stage_Cont_MemWrite_o <= 1'd0;
        ID_stage_Cont_MemRead_o <= 1'd0;
        ID_stage_Cont_MemtoReg_o <= 1'd0;
        ID_stage_Cont_ALUsrc_a_o <= 1'd0;
        ID_stage_Cont_ALUsrc_b_o <= 2'b00;
        ID_stage_Regfile_ra_value_o <= 32'd0;
        ID_stage_Regfile_rb_value_o <= 32'd0;
        ID_stage_Regfile_ra_o <= 5'd0;
        ID_stage_Regfile_rb_o <= 5'd0;
        ID_stage_rd_o <= 5'd0;
        ID_stage_immgen_Itype_imm_o <= 32'd0;
        ID_stage_immgen_Stype_imm_o <= 32'd0;
        ID_stage_immgen_Utype_imm_o <= 32'd0;
        ID_stage_pc_o <= 32'd0;
        ID_stage_opcode_o <= 7'd0;
        ID_stage_func_o <= 4'd0;
        ID_stage_Bran_c_jump_o <= 1'b0;
        ID_stage_with_imm_o <=1'b0;
        instret_o <= 64'd0;
        cycle_o <= 64'd0;
        ID_stage_CSR_imm12_o <= 12'd0;
	    ID_stage_pc_add4_o<= 32'd0;
    end
    else  
    begin
        ID_stage_Cont_RegWrite_o <= Cont_RegWrite;
        ID_stage_Cont_MemWrite_o <= Cont_MemWrite;
        ID_stage_Cont_MemRead_o <= Cont_MemRead;
        ID_stage_Cont_MemtoReg_o <= Cont_MemtoReg;
        ID_stage_Cont_ALUsrc_a_o <= Cont_ALUsrc_a;
        ID_stage_Cont_ALUsrc_b_o <= Cont_ALUsrc_b;
        ID_stage_Regfile_ra_value_o <= ra;
        ID_stage_Regfile_rb_value_o <= rb;
        ID_stage_Regfile_ra_o <= ID_stage_Inst[19:15];
        ID_stage_Regfile_rb_o <= ID_stage_Inst[24:20];
        ID_stage_rd_o <= ID_stage_Inst[11:7];
        ID_stage_immgen_Itype_imm_o <= imm_gen_Itype_imm;
        ID_stage_immgen_Stype_imm_o <= imm_gen_Stype_imm;
        ID_stage_immgen_Utype_imm_o <= imm_gen_Utype_imm;
        ID_stage_pc_o <= ID_stage_pc_i;
        ID_stage_opcode_o <= ID_stage_Inst[6:0];
        ID_stage_func_o <= {ID_stage_Inst[30],ID_stage_Inst[14:12]};
        ID_stage_Bran_c_jump_o <= Bran_c_jump;
        ID_stage_with_imm_o <= Cont_with_imm;
        instret_o <= csr;
        cycle_o <= cycle;
        ID_stage_CSR_imm12_o <= ID_stage_Inst[31:20];
	    ID_stage_pc_add4_o<=ID_stage_pc_add4_i;
    end
end

endmodule
