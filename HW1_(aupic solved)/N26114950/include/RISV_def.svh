//ALU operation
//--------------------------------------------------------------------
`define ALU_NONE               5'b00000
`define ALU_SHIFTL             5'b00001
`define ALU_SHIFTR             5'b00010
`define ALU_SHIFTR_ARITH       5'b00011
`define ALU_ADD                5'b00100
`define ALU_SUB                5'b00101
`define ALU_AND                5'b00110
`define ALU_OR                 5'b00111
`define ALU_XOR                5'b01000
`define ALU_LESS_THAN_UNSIGNED 5'b01001
`define ALU_LESS_THAN_SIGNED   5'b01010
`define ALU_LUI                5'b01011
`define ALU_RDINSTRETH         5'b01100
`define ALU_RDINSTRET          5'b01101
`define ALU_RDCYCLEH           5'b01110
`define ALU_RDCYCLE            5'b01111
`define ALU_AUIPC              5'b10000
//--------------------------------------------------------------------
`define Rtype_opcode                7'b0110011
`define Itype_opcode_imm12          7'b0010011
`define Itype_load_opcode           7'b0000011
`define Stype_store_opcode          7'b0100011
`define Btype_opcode                7'b1100011
`define Utype_AUIPC_opcode          7'b0010111
`define Utype_LUI_opcode            7'b0110111
`define JAL_opcode                  7'b1101111
`define JALR_opcode                 7'b1100111
`define CSR_opcode                  7'b1110011
//------------------------------------------------------------------
`define RDINSTRETH_imm 12'b110010000010
`define RDINSTRET_imm  12'b110000000010
`define RDCYCLEH_imm   12'b110010000000
`define RDCYCLE_imm    12'b110000000000






