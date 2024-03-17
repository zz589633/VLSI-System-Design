`include "RISV_def.svh"
module Forwarding
       (
           input ID_MemWrite,
           input EX_RegWrite,
           input MEM_RegWrite,
           input IF_branch,
           input IF_jump,
           input[4:0] EX_rd,
           input[4:0] MEM_rd,
           input[4:0] IF_ra,
           input[4:0] IF_rb,
           input[4:0] ID_ra,
           input[4:0] ID_rb,
           input ID_with_imm,
           output reg[1:0] ForwardA_o,
           output reg[1:0] ForwardB_o,
           output reg[1:0] ForwardC_o,
           output reg[1:0] ForwardD_o,
           output reg[1:0] ForwardE_o
       );



//ForwardA
always_comb
begin
    if((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_ra))  //add sub 
    begin
        ForwardA_o = 2'b01;
    end
    else if((MEM_RegWrite)&&(MEM_rd!=5'd0)&&(!((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_ra)))&&(MEM_rd==ID_ra)) //add ... sub
    begin
        ForwardA_o = 2'b10;
    end
    else
    begin
        ForwardA_o = 2'b00;
    end
end


//ForwardB
always_comb
begin
    if((!ID_with_imm)&&(EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_rb))  //add sub   but when(lw sub)->dont forward 
    begin
        ForwardB_o = 2'b01;
    end
    else if((!ID_with_imm)&&(MEM_RegWrite)&&(MEM_rd!=5'b0)&&(!((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_rb)))&&(MEM_rd==ID_rb)) //add ... sub
    begin
        ForwardB_o = 2'b10;
    end
    else
    begin
        ForwardB_o = 2'b00;
    end
end

//ForwardC  
always_comb
begin
    if((IF_branch||IF_jump)&&(EX_RegWrite)&&(EX_rd!=5'b0)&&(EX_rd==IF_ra)) //beq ... add hazard
    begin
        ForwardC_o = 2'b01;
    end
    else if((MEM_rd!=5'd0)&&(MEM_RegWrite)&&(MEM_rd==IF_ra)&&!((IF_branch||IF_jump)&&(EX_rd!=5'b0)&&(EX_rd==IF_ra))) //beq ... ... add hazard
    begin
        ForwardC_o = 2'b10;
    end
    else
    begin
        ForwardC_o = 2'b00;
    end
end

//ForwardD
always_comb
begin
    if((IF_branch)&&(EX_RegWrite)&&(EX_rd!=5'b0)&&(EX_rd==IF_rb)) //beq ... add hazard
    begin
        ForwardD_o = 2'b01;
    end
    else if((MEM_RegWrite)&&(MEM_rd!=5'd0)&&(MEM_rd==IF_rb)&&!((IF_branch)&&(EX_rd!=5'b0)&&(EX_rd==IF_rb))) //beq ... ... add hazard
    begin
        ForwardD_o = 2'b10;
    end
    else
    begin
        ForwardD_o = 2'b00;
    end
end  
//ForwardE   sw
always_comb
begin
    if((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_rb)&&(ID_MemWrite))  
    begin
        ForwardE_o = 2'b01;
    end
    else if((MEM_RegWrite)&&(MEM_rd!=5'b0)&&(MEM_rd==ID_rb)&&(ID_MemWrite)&&(!((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_rb)))) //add ... sub
    begin
        ForwardE_o = 2'b10;
    end
    else
    begin
        ForwardE_o = 2'b00;
    end
end




endmodule
