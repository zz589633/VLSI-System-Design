`include "RISV_def.svh"
`include "MUX_ALU_a.sv"
`include "MUX_ALU_b.sv"
`include "ALU.sv"
`include "ALU_control.sv"
`include "WEB_decode.sv"
`include "Forwarding.sv"
module EX_stage
       (
           input clk,
           input rst,
           input stall_wrap,
	       input [31:0]EX_stage_pc_add4_i,
           input [4:0]EX_stage_rd_i,
           input [6:0]EX_stage_opcode_i,
           input [3:0]EX_stage_func_i,
           input EX_stage_Cont_RegWrite_i,
           input EX_stage_Cont_MemWrite_i,
           input EX_stage_Cont_MemRead_i,
           input EX_stage_Cont_MemtoReg_i,
           input EX_stage_Cont_ALUsrc_a_i,
           input[1:0] EX_stage_Cont_ALUsrc_b_i,
           input[31:0] EX_stage_Regfile_ra_value_i,
           input[31:0] EX_stage_Regfile_rb_value_i,
           input[4:0] EX_stage_Regfile_ra_i,
           input[4:0] EX_stage_Regfile_rb_i,
           input[31:0] EX_stage_immgen_Itype_imm_i,
           input[31:0] EX_stage_immgen_Stype_imm_i,
           input[31:0] EX_stage_immgen_Utype_imm_i,
           input MEM_stage_RegWrite_i,
           input[4:0] MEM_stage_rd_i,
           input EX_stage_Bran_c_jump_i,
           input[4:0]IF_stage_ra_i,
           input[4:0]IF_stage_rb_i,
           input IF_stage_branch_i,
           input [31:0]EX_stage_PC_i,
           input ID_stage_with_imm_i,
           input IF_stage_jump_i,
           input [31:0]WB_stage_Writeback_data_i,
           input [63:0]instret_i,
           input [63:0]cycle_i,
           input [11:0]EX_stage_CSR_imm12_i,
           output reg[4:0] EX_stage_rd_o,
           output reg EX_stage_Cont_RegWrite_o,
           output reg EX_stage_Cont_MemWrite_o,
           output reg EX_stage_Cont_MemRead_o,
           output reg EX_stage_Cont_MemtoReg_o,
           output reg[31:0] EX_stage_store_data_o,
           output reg[31:0]EX_stage_ALU_result_o,
           output reg[3:0] EX_stage_WEB_o,
           output[1:0]EX_stage_ForwardC_o,
           output[1:0]EX_stage_ForwardD_o,
           output reg [2:0]EX_stage_loadfunc_o,
           output reg [2:0]cache_type_o
       );

wire[31:0]ALU_result;
wire[4:0]ALUc_func;
wire[3:0]WEB;
wire[31:0]MUX_ALU_b_source,MUX_ALU_a_source;
wire[1:0]ForwardA,ForwardB,ForwardE;

MUX_ALU_a u_MUX_ALU_a
        (
            .MUX_ALU_ALUsrc_a_i(EX_stage_Cont_ALUsrc_a_i),
            .MUX_ALU_ra_value_i(EX_stage_Regfile_ra_value_i),
            .MUX_ALU_PC_i(EX_stage_PC_i),
            .MUX_ALU_a_source_o(MUX_ALU_a_source)
        );

MUX_ALU_b u_MUX_ALU_b
        (
            .MUX_ALU_ALUsrc_b_i(EX_stage_Cont_ALUsrc_b_i),
            .MUX_ALU_rb_value_i(EX_stage_Regfile_rb_value_i),
            .MUX_ALU_Itype_imm_i(EX_stage_immgen_Itype_imm_i),
            .MUX_ALU_Stype_imm_i(EX_stage_immgen_Stype_imm_i),
            .MUX_ALU_Utype_imm_i(EX_stage_immgen_Utype_imm_i),
            .MUX_ALU_b_source_o(MUX_ALU_b_source)
        );

//-------------------------------------------------------------------------------


//forwarding MUX for ALU
wire [31:0]ALU_a;    
assign ALU_a = (ForwardA==2'b01)? EX_stage_ALU_result_o:
               (ForwardA==2'b10)? WB_stage_Writeback_data_i:MUX_ALU_a_source;
wire [31:0]ALU_b;
assign ALU_b = (ForwardB==2'b01)? EX_stage_ALU_result_o:
               (ForwardB==2'b10)? WB_stage_Writeback_data_i:MUX_ALU_b_source;

ALU u_alu
    ( 
        .PC_i(EX_stage_PC_i),
        .ALU_a_i(ALU_a),
        .ALU_b_i(ALU_b),
        .instret_i(instret_i),
        .cycle_i(cycle_i),
        .ALU_operation_i(ALUc_func),
        .ALU_result_o(ALU_result)
    );
//-------------------------------------------------------------------------------
ALU_control u_ALU_control
            (
                .ALUc_func_i(EX_stage_func_i), //{inst[30],inst[14:12]}
                .ALUc_Opcode_i(EX_stage_opcode_i),
                .ALUc_CSR_imm12_i(EX_stage_CSR_imm12_i),
                .ALUc_func_o(ALUc_func)
            );

WEB_decode u_WEB_decode
           (
               .WEB_opcode_i(EX_stage_opcode_i),
               .WEB_o(WEB)
           );

wire FW_EX_stage_RegWrite;
assign FW_EX_stage_RegWrite = EX_stage_Cont_RegWrite_o;
wire[4:0]FW_EX_stage_rd;
assign FW_EX_stage_rd = EX_stage_rd_o;

Forwarding u_Forwarding
           (    
               .ID_MemWrite(EX_stage_Cont_MemWrite_i),
               .EX_RegWrite(FW_EX_stage_RegWrite),
               .MEM_RegWrite(MEM_stage_RegWrite_i),
               .IF_branch(IF_stage_branch_i),
               .IF_jump(IF_stage_jump_i),
               .EX_rd(FW_EX_stage_rd),
               .MEM_rd(MEM_stage_rd_i),
               .IF_ra(IF_stage_ra_i),
               .IF_rb(IF_stage_rb_i),
               .ID_ra(EX_stage_Regfile_ra_i),
               .ID_rb(EX_stage_Regfile_rb_i),
               .ID_with_imm(ID_stage_with_imm_i),
               .ForwardA_o(ForwardA),
               .ForwardB_o(ForwardB),
               .ForwardC_o(EX_stage_ForwardC_o),
               .ForwardD_o(EX_stage_ForwardD_o),
               .ForwardE_o(ForwardE)
           );

//ForwardE
wire[31:0]rb_value;
assign rb_value=(ForwardE==2'b01)?EX_stage_ALU_result_o:
                (ForwardE==2'b10)?WB_stage_Writeback_data_i:EX_stage_Regfile_rb_value_i;

/*
// decode data for sh sw
reg [31:0]store_data;
always_comb
begin
	case({EX_stage_func_i[2:0],ALU_result[1:0]})
	5'b00100: //sh
		store_data = {{16{rb_value[15]}},rb_value[15:0]};
	5'b00110: //sh
		store_data = {rb_value[15:0],16'd0};
	5'b00000: //sb
 		store_data = {{24{rb_value[7]}},rb_value[7:0]};
	5'b00001: //sb
		store_data = {{16{rb_value[7]}},rb_value[7:0],8'd0};
	5'b00010: //sb
		store_data = {{8{rb_value[7]}},rb_value[7:0],16'd0};
	5'b00011: //sb
		store_data = {rb_value[7:0],24'd0};
	default:
		store_data = rb_value;
	endcase
end
*/
// decode data for sh sw
reg [31:0]store_data;
always_comb
begin
	case(EX_stage_func_i[2:0])
	3'b000: //sb
		store_data = {rb_value[7:0],rb_value[7:0],rb_value[7:0],rb_value[7:0]};
    3'b001: //sh
		store_data = {rb_value[15:0],rb_value[15:0]};
	default:
		store_data = rb_value;
	endcase
end


reg[1:0]cache_type;
always_comb
begin
    if(EX_stage_Cont_MemWrite_i)
    begin
        case(EX_stage_func_i[2:0])
        3'b000: //sb
            cache_type = 3'b000;
        3'b001: //sh
            cache_type = 3'b001;
        3'b010: //sw
            cache_type = 3'b010;
        default:
            cache_type = 3'b010;
        endcase
    end
    else 
        cache_type = 3'b010;
end


//pipeline
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        EX_stage_rd_o <= 5'd0;
        EX_stage_ALU_result_o <= 32'd0;
        EX_stage_Cont_RegWrite_o <= 1'b0;
        EX_stage_Cont_MemWrite_o <= 1'b0;
        EX_stage_Cont_MemRead_o <= 1'b0;
        EX_stage_Cont_MemtoReg_o <=1'b0;
        EX_stage_store_data_o <= 32'd0;
        EX_stage_WEB_o <= 4'b0000;
        EX_stage_loadfunc_o <= 3'd0;
        cache_type_o <= 3'd0;
    end
    else if(stall_wrap)
    begin
        EX_stage_rd_o <= EX_stage_rd_o;
        EX_stage_ALU_result_o <= EX_stage_ALU_result_o;
        EX_stage_Cont_RegWrite_o <= EX_stage_Cont_RegWrite_o;
        EX_stage_Cont_MemWrite_o <= EX_stage_Cont_MemWrite_o;
        EX_stage_Cont_MemRead_o <= EX_stage_Cont_MemRead_o;
        EX_stage_Cont_MemtoReg_o <=EX_stage_Cont_MemtoReg_o;
        EX_stage_store_data_o <= EX_stage_store_data_o;
        EX_stage_WEB_o <= EX_stage_WEB_o;
        EX_stage_loadfunc_o <= EX_stage_loadfunc_o;
        cache_type_o <= cache_type_o;
    end
    else
    begin
        EX_stage_rd_o <= EX_stage_rd_i;
        EX_stage_ALU_result_o <= (EX_stage_Bran_c_jump_i)? EX_stage_pc_add4_i : ALU_result;
        EX_stage_Cont_RegWrite_o <= EX_stage_Cont_RegWrite_i;
        EX_stage_Cont_MemWrite_o <= EX_stage_Cont_MemWrite_i;
        EX_stage_Cont_MemRead_o <= EX_stage_Cont_MemRead_i;
        EX_stage_Cont_MemtoReg_o <= EX_stage_Cont_MemtoReg_i;
        EX_stage_store_data_o <= store_data;
        EX_stage_WEB_o <= WEB;
        EX_stage_loadfunc_o <= EX_stage_func_i[2:0];
        cache_type_o <= cache_type;
    end
end

endmodule