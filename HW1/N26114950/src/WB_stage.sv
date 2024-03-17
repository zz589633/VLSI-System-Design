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


assign WB_stage_Writeback_data_o = (WB_stage_Cont_MemtoReg_i)? WB_stage_DM_data_decoded:WB_stage_ALU_result_i;
assign WB_stage_rd_o = WB_stage_rd_i;
assign WB_stage_Cont_RegWrite_o = WB_stage_Cont_RegWrite_i;

//decode for LW LB LH LHU LBU
always_comb
begin
    unique if(WB_stage_loadfunc_i==3'b010)  //LW
    begin
        WB_stage_DM_data_decoded = WB_stage_DM_data_i;
    end
    else if(WB_stage_loadfunc_i==3'b000)    //LB
    begin
        WB_stage_DM_data_decoded = {{24{WB_stage_DM_data_i[7]}},WB_stage_DM_data_i[7:0]};
    end
    else if(WB_stage_loadfunc_i==3'b001)    //LH
    begin
        WB_stage_DM_data_decoded = {{16{WB_stage_DM_data_i[15]}},WB_stage_DM_data_i[15:0]};
    end
    else if(WB_stage_loadfunc_i==3'b101)    //LHU
    begin
        WB_stage_DM_data_decoded = {16'd0,WB_stage_DM_data_i[15:0]};
    end
    else if(WB_stage_loadfunc_i==3'b100)    //LBU
    begin
        WB_stage_DM_data_decoded = {24'd0,WB_stage_DM_data_i[7:0]};
    end
    else
    begin
        WB_stage_DM_data_decoded = WB_stage_DM_data_i;
    end    
    
end


endmodule
