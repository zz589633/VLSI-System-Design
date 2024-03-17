`include "RISV_def.svh"
module WB_stage
       (
           input[2:0]WB_stage_loadfunc_i,
           input[31:0] WB_stage_DM_data_i,
           input[31:0] WB_stage_ALU_result_i,
           input[4:0] WB_stage_rd_i,
           input WB_stage_Cont_RegWrite_i,
           input WB_stage_Cont_MemtoReg_i,
           output[31:0]WB_stage_Writeback_data_o,
           output[4:0] WB_stage_rd_o,
           output WB_stage_Cont_RegWrite_o
       );
reg[31:0]WB_stage_DM_data_decoded;
reg[31:0] DM_out_byte, DM_out_half;


assign WB_stage_Writeback_data_o = (WB_stage_Cont_MemtoReg_i)? WB_stage_DM_data_decoded:WB_stage_ALU_result_i;
assign WB_stage_rd_o = WB_stage_rd_i;
assign WB_stage_Cont_RegWrite_o = WB_stage_Cont_RegWrite_i;


//decode for LW LB LH LHU LBU
always_comb begin
    if (WB_stage_ALU_result_i[1:0] == 2'b00)
        DM_out_half = (WB_stage_loadfunc_i == 3'b001)? 32'($signed(WB_stage_DM_data_i[15:0])) : {16'd0, WB_stage_DM_data_i[15:0]};
    else  
        DM_out_half = (WB_stage_loadfunc_i == 3'b001)? 32'($signed(WB_stage_DM_data_i[31:16])) : {16'd0, WB_stage_DM_data_i[31:16]};
end

always_comb begin
    case (WB_stage_ALU_result_i[1:0])
        2'b00:   
            DM_out_byte = (WB_stage_loadfunc_i == 3'b000)? 32'($signed(WB_stage_DM_data_i[7:0])) : {24'd0, WB_stage_DM_data_i[7:0]};
        2'b01:   
            DM_out_byte = (WB_stage_loadfunc_i == 3'b000)? 32'($signed(WB_stage_DM_data_i[15:8])) : {24'd0, WB_stage_DM_data_i[15:8]};
        2'b10:
            DM_out_byte = (WB_stage_loadfunc_i == 3'b000)? 32'($signed(WB_stage_DM_data_i[23:16])) : {24'd0, WB_stage_DM_data_i[23:16]};
        2'b11: 
            DM_out_byte = (WB_stage_loadfunc_i == 3'b000)? 32'($signed(WB_stage_DM_data_i[31:24])) : {24'd0, WB_stage_DM_data_i[31:24]};
    endcase
end

always_comb begin
    case (WB_stage_loadfunc_i)
        3'b000, 3'b100: //lb lbu
            WB_stage_DM_data_decoded = DM_out_byte;
        3'b001, 3'b101: //lh lhu
            WB_stage_DM_data_decoded = DM_out_half;
        default:       
            WB_stage_DM_data_decoded = WB_stage_DM_data_i;
    endcase
end

endmodule
