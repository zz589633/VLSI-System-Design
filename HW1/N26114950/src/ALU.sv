`include "RISV_def.svh"
module ALU
       (
           input [31:0]PC_i,
           input unsigned[31:0]ALU_a_i,
           input unsigned[31:0]ALU_b_i,
           input [63:0]instret_i,
           input [63:0]cycle_i,
           input [4:0]ALU_operation_i,
           output reg [31:0]ALU_result_o
       );

wire [4:0]shmat;
wire signed[31:0]a_signed,b_signed;

assign a_signed=ALU_a_i;
assign b_signed=ALU_b_i;

assign shmat = ALU_b_i[4:0];
//ALU operation control
always_comb
begin
    case(ALU_operation_i)
        `ALU_SHIFTL:
            ALU_result_o = ALU_a_i << shmat;
        `ALU_SHIFTR:
            ALU_result_o = ALU_a_i >> shmat;
        `ALU_SHIFTR_ARITH:
            ALU_result_o = a_signed >>> shmat;
        `ALU_ADD:
            ALU_result_o = ALU_a_i + ALU_b_i;
        `ALU_SUB:
            ALU_result_o = ALU_a_i - ALU_b_i;
        `ALU_AND:
            ALU_result_o = ALU_a_i & ALU_b_i;
        `ALU_OR:
            ALU_result_o = ALU_a_i | ALU_b_i;
        `ALU_XOR:
            ALU_result_o = ALU_a_i ^ ALU_b_i;
        `ALU_LESS_THAN_UNSIGNED:
            ALU_result_o = (ALU_a_i < ALU_b_i)? 32'd1:32'd0;
        `ALU_LESS_THAN_SIGNED:
            ALU_result_o = (a_signed < b_signed)? 32'd1:32'd0;
        `ALU_LUI:
            ALU_result_o = ALU_b_i;
        `ALU_RDINSTRETH:
            ALU_result_o = instret_i[63:32];
        `ALU_RDINSTRET:
            ALU_result_o = instret_i[31:0];
        `ALU_RDCYCLEH:
            ALU_result_o = cycle_i[63:32];
        `ALU_RDCYCLE:
            ALU_result_o = cycle_i[31:0];
        `ALU_AUIPC:
            ALU_result_o = PC_i + ALU_b_i ;
        default:
            ALU_result_o = 32'dx;
    endcase
end



endmodule
