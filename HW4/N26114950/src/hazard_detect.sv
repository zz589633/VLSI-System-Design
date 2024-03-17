 `include "RISV_def.svh"
module hazard_detect
       (
           input WFI,
           input ir_sc_taken,
           input stall_wrap,
           input[4:0] hd_IF_ra_i,
           input[4:0] hd_IF_rb_i,
           input[4:0] hd_ID_rd_i,
           input[4:0] hd_EX_rd_i,
           input hd_IF_branch_i,
           input hd_IF_jalr_i,
           input hd_ID_MemRead_i,
           input hd_ID_RegWrite_i,
           input hd_EX_MemRead_i,
           output reg hd_PCWrite_o,
           output reg hd_IF_stage_Write_o,
           output reg hd_stall_o
       );


always_comb
begin
    if(stall_wrap || (WFI && ~ir_sc_taken)) //dead lock ? 
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0; 
        hd_stall_o = 1'b0;
    end
    else if((hd_ID_MemRead_i)&&(hd_ID_rd_i==hd_IF_ra_i)) //load-use (ra)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_ID_MemRead_i)&&(hd_ID_rd_i==hd_IF_rb_i)) //load-use (rb)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i||hd_IF_jalr_i)&&(hd_ID_RegWrite_i)&&(hd_ID_rd_i==hd_IF_ra_i))  //beq add (ra)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i)&&(hd_ID_RegWrite_i)&&(hd_ID_rd_i==hd_IF_rb_i))  //beq add (rb)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i||hd_IF_jalr_i)&&(hd_EX_MemRead_i)&&(hd_EX_rd_i==hd_IF_ra_i)) // beq ... lw (ra)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i)&&(hd_EX_MemRead_i)&&(hd_EX_rd_i==hd_IF_rb_i)) // beq ... lw (rb)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i||hd_IF_jalr_i)&&(hd_ID_MemRead_i)&&(hd_ID_rd_i==hd_IF_ra_i)) // beq lw (ra)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else if((hd_IF_branch_i)&&(hd_ID_MemRead_i)&&(hd_ID_rd_i==hd_IF_rb_i)) // beq lw (rb)
    begin
        hd_PCWrite_o = 1'b0;
        hd_IF_stage_Write_o = 1'b0;
        hd_stall_o = 1'b1;
    end
    else
    begin
        hd_PCWrite_o = 1'b1;
        hd_IF_stage_Write_o = 1'b1;
        hd_stall_o = 1'b0;
    end

end

endmodule
