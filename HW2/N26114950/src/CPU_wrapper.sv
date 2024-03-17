`include "RISV_def.svh"
`include "AXI_define.svh"
`include "CPU.sv"
`include "Master1.v"
`include "Master0.v"

module CPU_wrapper
       (
           input clk,
           input rst_n,
           //SLAVE INTERFACE FOR MASTERS
           //WRITE ADDRESS
           output [`AXI_ID_BITS-1:0] AWID_M1,
           output [`AXI_ADDR_BITS-1:0] AWADDR_M1,
           output [`AXI_LEN_BITS-1:0] AWLEN_M1,
           output [`AXI_SIZE_BITS-1:0] AWSIZE_M1,
           output [1:0] AWBURST_M1,
           output AWVALID_M1,
           input AWREADY_M1,
           //WRITE DATA
           output [`AXI_DATA_BITS-1:0] WDATA_M1,
           output [`AXI_STRB_BITS-1:0] WSTRB_M1,
           output WLAST_M1,
           output WVALID_M1,
           input WREADY_M1,
           //WRITE RESPONSE
           input [`AXI_ID_BITS-1:0] BID_M1,
           input [1:0] BRESP_M1,
           input BVALID_M1,
           output BREADY_M1,

           //READ ADDRESS0
           output [`AXI_ID_BITS-1:0] ARID_M0,
           output [`AXI_ADDR_BITS-1:0] ARADDR_M0,
           output [`AXI_LEN_BITS-1:0] ARLEN_M0,
           output [`AXI_SIZE_BITS-1:0] ARSIZE_M0,
           output [1:0] ARBURST_M0,
           output ARVALID_M0,
           input ARREADY_M0,
           //READ DATA0
           input [`AXI_ID_BITS-1:0] RID_M0,
           input [`AXI_DATA_BITS-1:0] RDATA_M0,
           input [1:0] RRESP_M0,
           input RLAST_M0,
           input RVALID_M0,
           output RREADY_M0,
           //READ ADDRESS1
           output [`AXI_ID_BITS-1:0] ARID_M1,
           output [`AXI_ADDR_BITS-1:0] ARADDR_M1,
           output [`AXI_LEN_BITS-1:0] ARLEN_M1,
           output [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
           output [1:0] ARBURST_M1,
           output ARVALID_M1,
           input ARREADY_M1,
           //READ DATA1
           input [`AXI_ID_BITS-1:0] RID_M1,
           input [`AXI_DATA_BITS-1:0] RDATA_M1,
           input [1:0] RRESP_M1,
           input RLAST_M1,
           input RVALID_M1,
           output RREADY_M1
       );
wire CPU_MemWrite,CPU_MemRead;
wire [31:0]CPU_PC,IM1_Inst,DM1_data,CPU_ALU_result,CPU_DM1_DI;
wire[3:0]CPU_WEB;
wire [2:0]M0_cs,M1_cs;
wire stall_wrap,CPU_flush,CPU_hd_stall;
assign stall_wrap=(M0_cs==3'd0&&M1_cs==3'd0)?1'd0:1'd1;

wire [31:0]csr;

CPU u_CPU
    (
        .clk(clk),
        .rst(~rst_n),
        .csr(csr),
        .stall_wrap(stall_wrap),
        .CPU_IM1_Inst_i(IM1_Inst),
        .CPU_DM1_DO_i(DM1_data),
        .CPU_PC_o(CPU_PC),
        .CPU_MemRead_o(CPU_MemRead),
        .CPU_MemWrite_o(CPU_MemWrite),
        .CPU_WEB_o(CPU_WEB),
        .CPU_ALU_result_o(CPU_ALU_result),
        .CPU_DM1_DI_o(CPU_DM1_DI),
        .CPU_flush_o(CPU_flush),
        .CPU_hd_stall_o(CPU_hd_stall)
    );


Master0 u_Master0
        (
            .clk(clk),
            .rst_n(rst_n),
            .hd_stall(CPU_hd_stall),
            .flush(CPU_flush),
            .A(CPU_PC),
            .M1_cs(M1_cs),
            .M0_cs(M0_cs),
            .Inst(IM1_Inst),
            //read addr
            .ARID_M0(ARID_M0),
            .ARADDR_M0(ARADDR_M0),
            .ARLEN_M0(ARLEN_M0),
            .ARSIZE_M0(ARSIZE_M0),
            .ARBURST_M0(ARBURST_M0),
            .ARVALID_M0(ARVALID_M0),
            .ARREADY_M0(ARREADY_M0),
            //read data
            .RID_M0(RID_M0),   //no use
            .RDATA_M0(RDATA_M0),
            .RRESP_M0(RRESP_M0),  //no use
            .RLAST_M0(RLAST_M0),
            .RVALID_M0(RVALID_M0),
            .RREADY_M0(RREADY_M0),
            .csr(csr)
        );

Master1 u_Master1
        (
            .clk(clk),
            .rst_n(rst_n),
            .hd_stall(CPU_hd_stall),
            .A(CPU_ALU_result),
            .DM1_DI(CPU_DM1_DI),
            .DM1_DO(DM1_data),
            .MemRead(CPU_MemRead),
            .MemWrite(CPU_MemWrite),
            .M0_cs(M0_cs),
            .M1_cs(M1_cs),
		    .WEB(CPU_WEB),
            //write addr
            .AWID_M1(AWID_M1),
            .AWADDR_M1(AWADDR_M1),
            .AWLEN_M1(AWLEN_M1),
            .AWSIZE_M1(AWSIZE_M1),
            .AWBURST_M1(AWBURST_M1),
            .AWVALID_M1(AWVALID_M1),
            .AWREADY_M1(AWREADY_M1),
            //write data
            .WDATA_M1(WDATA_M1),
            .WSTRB_M1(WSTRB_M1),
            .WLAST_M1(WLAST_M1),
            .WVALID_M1(WVALID_M1),
            .WREADY_M1(WREADY_M1),
            //response
            .BID_M1(BID_M1),
            .BRESP_M1(BRESP_M1),
            .BVALID_M1(BVALID_M1),
            .BREADY_M1(BREADY_M1),
            //read addr
            .ARID_M1(ARID_M1),
            .ARADDR_M1(ARADDR_M1),
            .ARLEN_M1(ARLEN_M1),
            .ARSIZE_M1(ARSIZE_M1),
            .ARBURST_M1(ARBURST_M1),
            .ARVALID_M1(ARVALID_M1),
            .ARREADY_M1(ARREADY_M1),
            //read data
            .RID_M1(RID_M1),
            .RDATA_M1(RDATA_M1),
            .RRESP_M1(RRESP_M1),
            .RLAST_M1(RLAST_M1),
            .RVALID_M1(RVALID_M1),
            .RREADY_M1(RREADY_M1)
        );


endmodule
