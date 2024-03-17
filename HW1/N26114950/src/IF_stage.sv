`include "RISV_def.svh"
module IF_stage
       (
           input clk,
           input rst,
           input IF_stage_PCSrc_i,
           input[31:0] IF_stage_target_i,
           input IF_stage_hd_PCWrite_i,
           input IF_stage_hd_Write_i,
           output reg[31:0]IF_stage_pc_o,
	       output reg[31:0]IF_stage_pc_add4_o,
           output[31:0]IM_addr
       );
reg [31:0]PC;
wire[31:0]new_PC;


assign new_PC=(IF_stage_hd_PCWrite_i&&IF_stage_PCSrc_i)?IF_stage_target_i:
                (IF_stage_hd_PCWrite_i)?PC+32'd4:PC;

assign IM_addr =(IF_stage_hd_PCWrite_i)?PC:IF_stage_pc_o;


//point counter
always_ff@(posedge clk or posedge rst)
begin
    if(rst)
        PC <= 32'd0;
    else
        PC <= new_PC;
end
 

//pipeline
always_ff@(posedge clk or posedge rst )
begin
    if(rst)
    begin
        IF_stage_pc_o <= 32'b0;
    end
    else if(IF_stage_hd_Write_i)
    begin
        IF_stage_pc_o <= PC;
    end
    else
    begin
        IF_stage_pc_o <= IF_stage_pc_o;
    end
end

always_ff@(posedge clk or posedge rst )
begin
    if(rst)
    begin
        IF_stage_pc_add4_o <= 32'b0;
    end
    else if(IF_stage_hd_Write_i)
    begin
        IF_stage_pc_add4_o <= PC+32'd4;
    end
    else
    begin
        IF_stage_pc_add4_o <= IF_stage_pc_add4_o;
    end
end



endmodule
