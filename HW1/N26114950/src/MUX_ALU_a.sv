`include "RISV_def.svh"
module MUX_ALU_a
(
    input MUX_ALU_ALUsrc_a_i,
    input [31:0]MUX_ALU_ra_value_i,
    input [31:0]MUX_ALU_PC_i,
    output [31:0]MUX_ALU_a_source_o
);

assign MUX_ALU_a_source_o=(MUX_ALU_ALUsrc_a_i)?MUX_ALU_PC_i:MUX_ALU_ra_value_i;

endmodule