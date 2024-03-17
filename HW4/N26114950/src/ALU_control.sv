`include "RISV_def.svh"
module ALU_control
       (
           input [3:0]ALUc_func_i,
           input [6:0]ALUc_Opcode_i,
           input [11:0]ALUc_CSR_imm12_i,
           output reg[4:0]ALUc_func_o,
           output reg[2:0]CSR_op
       );


//decode  Inst to  ALU operation
always_comb
begin
    //for R-type 
    unique if(ALUc_Opcode_i==`Rtype_opcode)
    begin
        unique if(ALUc_func_i==4'b0000)
            ALUc_func_o = `ALU_ADD;
        else if(ALUc_func_i==4'b1000)
            ALUc_func_o = `ALU_SUB;
        else if(ALUc_func_i==4'b0001)
            ALUc_func_o = `ALU_SHIFTL;
        else if(ALUc_func_i==4'b0010)
            ALUc_func_o = `ALU_LESS_THAN_SIGNED;
        else if(ALUc_func_i==4'b0011)
            ALUc_func_o = `ALU_LESS_THAN_UNSIGNED;
        else if(ALUc_func_i==4'b0100)
            ALUc_func_o = `ALU_XOR;
        else if(ALUc_func_i==4'b0101)
            ALUc_func_o = `ALU_SHIFTR;
        else if(ALUc_func_i==4'b1101)
            ALUc_func_o = `ALU_SHIFTR_ARITH;
        else if(ALUc_func_i==4'b0110)
            ALUc_func_o = `ALU_OR;
        else if(ALUc_func_i==4'b0111)
            ALUc_func_o = `ALU_AND;
        else
            ALUc_func_o = `ALU_NONE;
    end
    else if(ALUc_Opcode_i==`Itype_opcode_imm12) //some I-type
    begin
        unique if(ALUc_func_i[2:0]==3'b000)
            ALUc_func_o = `ALU_ADD;
        else if(ALUc_func_i[2:0]==3'b010)
            ALUc_func_o = `ALU_LESS_THAN_SIGNED;
        else if(ALUc_func_i[2:0]==3'b011)
            ALUc_func_o = `ALU_LESS_THAN_UNSIGNED;
        else if(ALUc_func_i[2:0]==3'b100)
            ALUc_func_o = `ALU_XOR;
        else if(ALUc_func_i[2:0]==3'b110)
            ALUc_func_o = `ALU_OR;
        else if(ALUc_func_i[2:0]==3'b111)
            ALUc_func_o = `ALU_AND;
        else if(ALUc_func_i==4'b0001)
            ALUc_func_o = `ALU_SHIFTL;
        else if(ALUc_func_i==4'b0101)
            ALUc_func_o = `ALU_SHIFTR;
        else if(ALUc_func_i==4'b1101)
            ALUc_func_o = `ALU_SHIFTR_ARITH;
        else
            ALUc_func_o = `ALU_NONE;
    end
    //for LW SW
    else if((ALUc_Opcode_i==`Itype_load_opcode)||(ALUc_Opcode_i==`Stype_store_opcode))
    begin
        ALUc_func_o = `ALU_ADD;
    end
    //for AUIPC
    else if(ALUc_Opcode_i==`Utype_AUIPC_opcode)
    begin
        ALUc_func_o = `ALU_AUIPC;
    end
    //for LUI
    else if(ALUc_Opcode_i==`Utype_LUI_opcode)
    begin
        ALUc_func_o = `ALU_LUI;
    end
    /*else if(ALUc_Opcode_i==`CSR_opcode)
    begin
        unique if((ALUc_CSR_imm12_i==`RDINSTRETH_imm) && (ALUc_func_i[2:0] == 3'b010))
        begin
            ALUc_func_o = `ALU_RDINSTRETH;
        end
        else if((ALUc_CSR_imm12_i==`RDINSTRET_imm) && (ALUc_func_i[2:0] == 3'b010))
        begin
            ALUc_func_o = `ALU_RDINSTRET;
        end
        else if((ALUc_CSR_imm12_i==`RDCYCLEH_imm) && (ALUc_func_i[2:0] == 3'b010))
        begin
            ALUc_func_o = `ALU_RDCYCLEH;
        end
        else if((ALUc_CSR_imm12_i==`RDCYCLE_imm) && (ALUc_func_i[2:0] == 3'b010))
        begin
            ALUc_func_o = `ALU_RDCYCLE;
        end
        else
        begin
            ALUc_func_o=`ALU_NONE;
        end
    end*/
    else if(ALUc_Opcode_i==`CSR_opcode)
    begin
        ALUc_func_o = `ALU_CSR;
    end
    else
    begin
        ALUc_func_o=`ALU_NONE;
    end
end


always_comb begin
	case (ALUc_func_i[2:0])
		3'b001:  CSR_op = `CSRRW;
		3'b010:  CSR_op = `CSRRS;
		3'b011:  CSR_op = `CSRRC;
		3'b101:  CSR_op = `CSRRWI;
		3'b110:  CSR_op = `CSRRSI;
		3'b111:  CSR_op = `CSRRCI;
		default: CSR_op = `CSRNOP;
	endcase
end

endmodule
