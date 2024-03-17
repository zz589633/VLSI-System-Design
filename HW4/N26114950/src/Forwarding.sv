`include "RISV_def.svh"
module Forwarding
       (
           input[6:0] opcode_EXE,
           input[6:0] opcode_MEM,
           input[6:0] opcode_WB,
           input[11:0]csr_addr_EXE,
           input[11:0]csr_addr_MEM,
           input[11:0]csr_addr_WB,
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
           output reg[1:0] ForwardE_o,
           output reg csr_forward12,
           output reg csr_forward13
       );



//ForwardA
always_comb
begin
    if((EX_RegWrite)&&(EX_rd!=5'd0)&&(EX_rd==ID_ra))  //add sub 
    begin
        ForwardA_o = 2'b01;
    end
    else if((MEM_RegWrite)&&(MEM_rd!=5'd0)&&(MEM_rd==ID_ra)) //add ... sub
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
    else if((!ID_with_imm)&&(MEM_RegWrite)&&(MEM_rd!=5'b0)&&(MEM_rd==ID_rb)) //add ... sub
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
    else if((MEM_rd!=5'd0)&&(MEM_RegWrite)&&(MEM_rd==IF_ra)) //beq ... ... add hazard
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
    else if((MEM_RegWrite)&&(MEM_rd!=5'd0)&&(MEM_rd==IF_rb)) //beq ... ... add hazard
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
    else if((MEM_RegWrite)&&(MEM_rd!=5'b0)&&(MEM_rd==ID_rb)&&(ID_MemWrite)) //add ... sub
    begin
        ForwardE_o = 2'b10;
    end
    else
    begin
        ForwardE_o = 2'b00;
    end
end

always_comb 
begin
//can't forward when overwrite forbidden region
    if (opcode_MEM == `CSR_opcode && opcode_EXE == `CSR_opcode && csr_addr_MEM != 12'h305 && csr_addr_MEM != 12'h344)
        csr_forward12 = (csr_addr_MEM == csr_addr_EXE)? 1'b1 : 1'b0;
    else
        csr_forward12 = 1'b0;
end
    
always_comb 
begin
    //can't forward when overwrite forbidden region
    if (opcode_WB == `CSR_opcode && opcode_EXE == `CSR_opcode && csr_addr_WB != 12'h305 && csr_addr_WB != 12'h344)
        csr_forward13 = (csr_addr_WB == csr_addr_EXE)? 1'b1 : 1'b0;
    else
        csr_forward13 = 1'b0;
end


endmodule
