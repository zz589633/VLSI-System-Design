`include "RISV_def.svh"
`include "CPU.sv"
`include "SRAM_wrapper.sv"
module top
       (
           input clk,
           input rst
       );

//CPU wire
wire[31:0]CPU_PC,CPU_ALU_result;
wire CPU_MemRead;
wire[3:0]CPU_WEB;
wire[31:0]CPU_DM1_DI;

//IM1 wire
wire[31:0]IM1_Inst;

//DM1 wire
wire[31:0]DM1_data;


CPU u_CPU
    (
        .clk(clk),
        .rst(rst),
        .CPU_IM1_Inst_i(IM1_Inst),
        .CPU_DM1_DO_i(DM1_data),
        .CPU_PC_o(CPU_PC),
        .CPU_MemRead_o(CPU_MemRead),
        .CPU_WEB_o(CPU_WEB),
        .CPU_ALU_result_o(CPU_ALU_result),
        .CPU_DM1_DI_o(CPU_DM1_DI)
    );


SRAM_wrapper IM1
             (
                 .CK(clk),
                 .CS(1'b1),  //chip select(input enable)
                 .OE(1'b1), //always can be read
                 .WEB(4'b1111),  
                 .A(CPU_PC[15:2]),
                 .DI(32'b0),
                 .DO(IM1_Inst)
             );


SRAM_wrapper DM1
             (
                 .CK(clk),
                 .CS(1'b1),  //1
                 .OE(CPU_MemRead),  //1
                 .WEB(CPU_WEB),
                 .A(CPU_ALU_result[15:2]), //14bit
                 .DI(CPU_DM1_DI),
                 .DO(DM1_data)
             );

endmodule
