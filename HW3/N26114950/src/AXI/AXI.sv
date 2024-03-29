//================================================
// Auther:      Chang Wan-Yun (Claire)
// Filename:    AXI.sv
// Description: Top module of AXI
// Version:     1.0 
//================================================
`include "AXI_define.svh"
`include "AXI_state.svh"

module AXI(

  input ACLK,
  input ARESETn,
  //MASTER INTERFACE
  // M0
  // WRITE
  input [`AXI_ID_BITS-1:0]          AWID_M1,
  input [`AXI_ADDR_BITS-1:0]        AWADDR_M1,
  input [`AXI_LEN_BITS-1:0]         AWLEN_M1,
  input [`AXI_SIZE_BITS-1:0]        AWSIZE_M1,
  input [1:0]                       AWBURST_M1,
  input                             AWVALID_M1,
  output logic                      AWREADY_M1,
  input [`AXI_DATA_BITS-1:0]        WDATA_M1,
  input [`AXI_STRB_BITS-1:0]        WSTRB_M1,
  input                             WLAST_M1,
  input                             WVALID_M1,
  output logic                      WREADY_M1,
  output logic [`AXI_ID_BITS-1:0]   BID_M1,
  output logic [1:0]                BRESP_M1,
  output logic                      BVALID_M1,
  input                             BREADY_M1,
  // READ
  input [`AXI_ID_BITS-1:0]          ARID_M0,
  input [`AXI_ADDR_BITS-1:0]        ARADDR_M0,
  input [`AXI_LEN_BITS-1:0]         ARLEN_M0,
  input [`AXI_SIZE_BITS-1:0]        ARSIZE_M0,
  input [1:0]                       ARBURST_M0,
  input                             ARVALID_M0,
  output logic                      ARREADY_M0,
  output logic [`AXI_ID_BITS-1:0]   RID_M0,
  output logic [`AXI_DATA_BITS-1:0] RDATA_M0,
  output logic [1:0]                RRESP_M0,
  output logic                      RLAST_M0,
  output logic                      RVALID_M0,
  input                             RREADY_M0,
  // M1
  // READ
  input [`AXI_ID_BITS-1:0]          ARID_M1,
  input [`AXI_ADDR_BITS-1:0]        ARADDR_M1,
  input [`AXI_LEN_BITS-1:0]         ARLEN_M1,
  input [`AXI_SIZE_BITS-1:0]        ARSIZE_M1,
  input [1:0]                       ARBURST_M1,
  input                             ARVALID_M1,
  output logic                      ARREADY_M1,
  output logic [`AXI_ID_BITS-1:0]   RID_M1,
  output logic [`AXI_DATA_BITS-1:0] RDATA_M1,
  output logic [1:0]                RRESP_M1,
  output logic                      RLAST_M1,
  output logic                      RVALID_M1,
  input                             RREADY_M1,
  //SLAVE INTERFACE
  // S0
  // READ
  output logic [`AXI_IDS_BITS-1:0]  ARID_S0,
  output logic [`AXI_ADDR_BITS-1:0] ARADDR_S0,
  output logic [`AXI_LEN_BITS-1:0]  ARLEN_S0,
  output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S0,
  output logic [1:0]                ARBURST_S0,
  output logic                      ARVALID_S0,
  input                             ARREADY_S0,
  input [`AXI_IDS_BITS-1:0]         RID_S0,
  input [`AXI_DATA_BITS-1:0]        RDATA_S0,
  input [1:0]                       RRESP_S0,
  input                             RLAST_S0,
  input                             RVALID_S0,
  output logic                      RREADY_S0,
  // S1
  // WRITE
  output logic [`AXI_IDS_BITS-1:0]  AWID_S1,
  output logic [`AXI_ADDR_BITS-1:0] AWADDR_S1,
  output logic [`AXI_LEN_BITS-1:0]  AWLEN_S1,
  output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S1,
  output logic [1:0]                AWBURST_S1,
  output logic                      AWVALID_S1,
  input                             AWREADY_S1,
  output logic [`AXI_DATA_BITS-1:0] WDATA_S1,
  output logic [`AXI_STRB_BITS-1:0] WSTRB_S1,
  output logic                      WLAST_S1,
  output logic                      WVALID_S1,
  input                             WREADY_S1,
  input [`AXI_IDS_BITS-1:0]         BID_S1,
  input [1:0]                       BRESP_S1,
  input                             BVALID_S1,
  output logic                      BREADY_S1,
  // READ
  output logic [`AXI_IDS_BITS-1:0]  ARID_S1,
  output logic [`AXI_ADDR_BITS-1:0] ARADDR_S1,
  output logic [`AXI_LEN_BITS-1:0]  ARLEN_S1,
  output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S1,
  output logic [1:0]                ARBURST_S1,
  output logic                      ARVALID_S1,
  input                             ARREADY_S1,
  input [`AXI_IDS_BITS-1:0]         RID_S1,
  input [`AXI_DATA_BITS-1:0]        RDATA_S1,
  input [1:0]                       RRESP_S1,
  input                             RLAST_S1,
  input                             RVALID_S1,
  output logic                      RREADY_S1,
  // S2
  // WRITE
  output logic [`AXI_IDS_BITS-1:0]  AWID_S2,
  output logic [`AXI_ADDR_BITS-1:0] AWADDR_S2,
  output logic [`AXI_LEN_BITS-1:0]  AWLEN_S2,
  output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S2,
  output logic [1:0]                AWBURST_S2,
  output logic                      AWVALID_S2,
  input                             AWREADY_S2,
  output logic [`AXI_DATA_BITS-1:0] WDATA_S2,
  output logic [`AXI_STRB_BITS-1:0] WSTRB_S2,
  output logic                      WLAST_S2,
  output logic                      WVALID_S2,
  input                             WREADY_S2,
  input [`AXI_IDS_BITS-1:0]         BID_S2,
  input [1:0]                       BRESP_S2,
  input                             BVALID_S2,
  output logic                      BREADY_S2,
  // READ
  output logic [`AXI_IDS_BITS-1:0]  ARID_S2,
  output logic [`AXI_ADDR_BITS-1:0] ARADDR_S2,
  output logic [`AXI_LEN_BITS-1:0]  ARLEN_S2,
  output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S2,
  output logic [1:0]                ARBURST_S2,
  output logic                      ARVALID_S2,
  input                             ARREADY_S2,
  input [`AXI_IDS_BITS-1:0]         RID_S2,
  input [`AXI_DATA_BITS-1:0]        RDATA_S2,
  input [1:0]                       RRESP_S2,
  input                             RLAST_S2,
  input                             RVALID_S2,
  output logic                      RREADY_S2,
  // S3
  // WRITE
/*  output logic [`AXI_IDS_BITS-1:0]  AWID_S3,
  output [`AXI_ADDR_BITS-1:0]       AWADDR_S3,
  output [`AXI_LEN_BITS-1:0]        AWLEN_S3,
  output [`AXI_SIZE_BITS-1:0]       AWSIZE_S3,
  output [1:0]                      AWBURST_S3,
  output logic                      AWVALID_S3,
  input                             AWREADY_S3,
  output logic [`AXI_DATA_BITS-1:0] WDATA_S3,
  output logic [`AXI_STRB_BITS-1:0] WSTRB_S3,
  output logic                      WLAST_S3,
  output logic                      WVALID_S3,
  input                             WREADY_S3,
  input [`AXI_IDS_BITS-1:0]         BID_S3,
  input [1:0]                       BRESP_S3,
  input                             BVALID_S3,
  output  logic                     BREADY_S3,
  // READ
  output logic [`AXI_IDS_BITS-1:0]  ARID_S3,
  output [`AXI_ADDR_BITS-1:0]       ARADDR_S3,
  output [`AXI_LEN_BITS-1:0]        ARLEN_S3,
  output [`AXI_SIZE_BITS-1:0]       ARSIZE_S3,
  output logic [1:0]                ARBURST_S3,
  output logic                      ARVALID_S3,
  input                             ARREADY_S3,
  input [`AXI_IDS_BITS-1:0]         RID_S3,
  input [`AXI_DATA_BITS-1:0]        RDATA_S3,
  input [1:0]                       RRESP_S3,
  input                             RLAST_S3,
  input                             RVALID_S3,
  output logic                      RREADY_S3,*/
  // S4
  // WRITE
  output logic [`AXI_IDS_BITS-1:0]  AWID_S4,
  output logic [`AXI_ADDR_BITS-1:0] AWADDR_S4,
  output logic [`AXI_LEN_BITS-1:0]  AWLEN_S4,
  output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S4,
  output logic [1:0]                AWBURST_S4,
  output logic                      AWVALID_S4,
  input                             AWREADY_S4,
  output logic [`AXI_DATA_BITS-1:0] WDATA_S4,
  output logic [`AXI_STRB_BITS-1:0] WSTRB_S4,
  output logic                      WLAST_S4,
  output logic                      WVALID_S4,
  input                             WREADY_S4,
  input [`AXI_IDS_BITS-1:0]         BID_S4,
  input [1:0]                       BRESP_S4,
  input                             BVALID_S4,
  output logic                      BREADY_S4,
  // READ
  output logic [`AXI_IDS_BITS-1:0]  ARID_S4,
  output logic [`AXI_ADDR_BITS-1:0] ARADDR_S4,
  output logic [`AXI_LEN_BITS-1:0]  ARLEN_S4,
  output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S4,
  output logic [1:0]                ARBURST_S4,
  output logic                      ARVALID_S4,
  input                             ARREADY_S4,
  input [`AXI_IDS_BITS-1:0]         RID_S4,
  input [`AXI_DATA_BITS-1:0]        RDATA_S4,
  input [1:0]                       RRESP_S4,
  input                             RLAST_S4,
  input                             RVALID_S4,
  output logic                      RREADY_S4
);

// ROM   0x0000_0000 ~ 0x0000_1FFF
// IM    0x0001_0000 ~ 0x0001_FFFF
// DM    0x0002_0000 ~ 0x0002_FFFF
// Sctrl 0x1000_0000 ~ 0x1000_03FF
// DRAM  0x2000_0000 ~ 0x201F_FFFF


//read arbiter
reg[3:0]Read_cs,Read_ns;
always@(posedge ACLK or negedge ARESETn)
begin
    if(~ARESETn)
    begin
        Read_cs <= 4'd0;
    end
    else
    begin
        Read_cs <= Read_ns;
    end
end


always@(*)
begin
    case(Read_cs)
        `initial_read:
            Read_ns = (ARVALID_M0 && ARADDR_M0[31:16]==16'h0000)? `M0_AR_S0:
                      (ARVALID_M0 && ARADDR_M0[31:16]==16'h0001)? `M0_AR_S1:
                      (ARVALID_M0 && ARADDR_M0[31:16]==16'h0002)? `M0_AR_S2:
                      (ARVALID_M0 && ARADDR_M0[31:24]==8'h20)? `M0_AR_S4:
                      (ARVALID_M1 && ARADDR_M1[31:16]==16'h0000)? `M1_AR_S0:
                      (ARVALID_M1 && ARADDR_M1[31:16]==16'h0001)? `M1_AR_S1:
                      (ARVALID_M1 && ARADDR_M1[31:16]==16'h0002)? `M1_AR_S2:
                      (ARVALID_M1 && ARADDR_M1[31:24]==8'h20)? `M1_AR_S4 : `initial_read;
        `M0_AR_S0:
            Read_ns = (ARREADY_M0)? `M0_read : `M0_AR_S0;
        `M0_AR_S1:
            Read_ns = (ARREADY_M0)? `M0_read : `M0_AR_S1;
        `M0_AR_S2:
            Read_ns = (ARREADY_M0)? `M0_read : `M0_AR_S2;
        `M0_AR_S4:
            Read_ns = (ARREADY_M0)? `M0_read : `M0_AR_S4;
        `M0_read:
            Read_ns = (RVALID_M0 && RREADY_M0 && RLAST_M0)? `initial_read : `M0_read;
        `M1_AR_S0:
            Read_ns = (ARREADY_M1)? `M1_read: `M1_AR_S0;
        `M1_AR_S1:
            Read_ns = (ARREADY_M1)? `M1_read: `M1_AR_S1;
        `M1_AR_S2:
            Read_ns = (ARREADY_M1)? `M1_read: `M1_AR_S2;
        `M1_AR_S4:
            Read_ns = (ARREADY_M1)? `M1_read: `M1_AR_S4;
        `M1_read:
            Read_ns = (RVALID_M1 && RREADY_M1 && RLAST_M1)? `initial_read : `M1_read;
        default:
            Read_ns = `initial_read;
    endcase
end

//AR channel
always@(*)
begin
    case(Read_cs)
        `initial_read,`M0_read,`M1_read:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARLEN_S2 =  4'd0;
            ARLEN_S4 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARVALID_S2 =1'd0;
            ARVALID_S4 =1'd0;
            ARREADY_M0 = 1'b0;
            ARREADY_M1 = 1'b0;
        end
        `M0_AR_S0:  //4'b0001 M0 ARID
        begin
            ARID_S0 = {4'b0001, ARID_M0};
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = ARADDR_M0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = ARLEN_M0;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = ARSIZE_M0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = ARBURST_M0;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = ARVALID_M0;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = ARREADY_S0;
            ARREADY_M1 = 1'd0;
        end
        `M0_AR_S1:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = {4'b0001, ARID_M0};
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = ARADDR_M0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = ARLEN_M0;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = ARSIZE_M0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = ARBURST_M0;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = ARVALID_M0;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = ARREADY_S1;
            ARREADY_M1 = 1'd0;
        end
        `M0_AR_S2:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = {4'b0001, ARID_M0};
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = ARADDR_M0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = ARLEN_M0;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = ARSIZE_M0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = ARBURST_M0;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = ARVALID_M0;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = ARREADY_S2;
            ARREADY_M1 = 1'd0;
        end
        `M0_AR_S4:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = {4'b0001, ARID_M0};
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S4 = ARADDR_M0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = ARLEN_M0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = ARSIZE_M0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = ARBURST_M0;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = ARVALID_M0;
            ARREADY_M0 = ARREADY_S4;
            ARREADY_M1 = 1'd0;
        end
        `M1_AR_S0:  //4'b0010 M1 AWID
        begin
            ARID_S0 = {4'b0010, ARID_M1};
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = ARADDR_M1;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = ARLEN_M1;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = ARSIZE_M1;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = ARBURST_M1;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = ARVALID_M1;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S0;
        end
        `M1_AR_S1:   
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = {4'b0010, ARID_M1};
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = ARADDR_M1;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = ARLEN_M1;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = ARSIZE_M1;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = ARBURST_M1;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = ARVALID_M1;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S1;
        end
        `M1_AR_S2:   
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = {4'b0010, ARID_M1};
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = ARADDR_M1;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = ARLEN_M1;
            ARLEN_S4 = 4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = ARSIZE_M1;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = ARBURST_M1;
            ARBURST_S4 = 2'b00;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = ARVALID_M1;
            ARVALID_S4 = 1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S2;
        end
        `M1_AR_S4:   
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = {4'b0010, ARID_M1};
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = ARADDR_M1;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = 4'd0;
            ARLEN_S2 = 4'd0;
            ARLEN_S4 = ARLEN_M1;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = ARSIZE_M1;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARBURST_S2 = 2'b00;
            ARBURST_S4 = ARBURST_M1;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = 1'd0;
            ARVALID_S2 = 1'd0;
            ARVALID_S4 = ARVALID_M1;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S4;
        end
        default:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARID_S2 = 8'd0;
            ARID_S4 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARADDR_S2 = 32'd0;
            ARADDR_S4 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARLEN_S2 =  4'd0;
            ARLEN_S4 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARSIZE_S2 = 3'd0;
            ARSIZE_S4 = 3'd0;
            ARBURST_S0 = 2'b01;
            ARBURST_S1 = 2'b01;
            ARBURST_S2 = 2'b01;
            ARBURST_S4 = 2'b01;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARVALID_S2 =1'd0;
            ARVALID_S4 =1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = 1'd0;
        end
    endcase
end

//R channel
always@(*)
begin
    case(Read_cs)
        `initial_read,`M0_AR_S0,`M0_AR_S1,`M0_AR_S2,`M0_AR_S4,`M1_AR_S0,`M1_AR_S1,`M1_AR_S2,`M1_AR_S4:
        begin
            RID_M0 = 4'd0;
            RID_M1 = 4'd0;
            RDATA_M0 = 32'd0;
            RDATA_M1 = 32'd0;
            RRESP_M0 = 2'd0;
            RRESP_M1 = 2'd0;
            RLAST_M0 = 1'd0;
            RLAST_M1 = 1'd0;
            RVALID_M0 = 1'd0;
            RVALID_M1 = 1'd0;
            RREADY_S0 = 1'b0;
            RREADY_S1 = 1'b0;
            RREADY_S2 = 1'b0;
            RREADY_S4 = 1'b0;
        end
        `M0_read:
        begin
            if(RID_S0[7:4]==4'b0001&&RVALID_S0)
            begin
                RID_M0 = RID_S0[3:0];
                RID_M1 = 4'd0;
                RDATA_M0 = RDATA_S0;
                RDATA_M1 = 32'd0;
                RRESP_M0 = RRESP_S0;
                RRESP_M1 = 2'd0;
                RLAST_M0 = RLAST_S0;
                RLAST_M1 = 1'd0;
                RVALID_M0 = RVALID_S0;
                RVALID_M1 = 1'd0;
                RREADY_S0 = RREADY_M0;
                RREADY_S1 = 1'd0;
                RREADY_S2 = 1'd0;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S1[7:4]==4'b0001&&RVALID_S1)
            begin
                RID_M0 = RID_S1[3:0];
                RID_M1 = 4'd0;
                RDATA_M0 = RDATA_S1;
                RDATA_M1 = 32'd0;
                RRESP_M0 = RRESP_S1;
                RRESP_M1 = 2'd0;
                RLAST_M0 = RLAST_S1;
                RLAST_M1 = 1'd0;
                RVALID_M0 = RVALID_S1;
                RVALID_M1 = 1'd0;
                RREADY_S0 = 1'd0;
                RREADY_S1 = RREADY_M0;
                RREADY_S2 = 1'd0;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S2[7:4]==4'b0001&&RVALID_S2)
            begin
                RID_M0 = RID_S2[3:0];
                RID_M1 = 4'd0;
                RDATA_M0 = RDATA_S2;
                RDATA_M1 = 32'd0;
                RRESP_M0 = RRESP_S2;
                RRESP_M1 = 2'd0;
                RLAST_M0 = RLAST_S2;
                RLAST_M1 = 1'd0;
                RVALID_M0 = RVALID_S2;
                RVALID_M1 = 1'd0;
                RREADY_S0 = 1'd0;
                RREADY_S1 = 1'd0;
                RREADY_S2 = RREADY_M0;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S4[7:4]==4'b0001&&RVALID_S4)
            begin
                RID_M0 = RID_S4[3:0];
                RID_M1 = 4'd0;
                RDATA_M0 = RDATA_S4;
                RDATA_M1 = 32'd0;
                RRESP_M0 = RRESP_S4;
                RRESP_M1 = 2'd0;
                RLAST_M0 = RLAST_S4;
                RLAST_M1 = 1'd0;
                RVALID_M0 = RVALID_S4;
                RVALID_M1 = 1'd0;
                RREADY_S0 = 1'd0;
                RREADY_S1 = 1'd0;
                RREADY_S2 = 1'd0;
                RREADY_S4 = RREADY_M0;
            end
            else
            begin
                RID_M0 = 4'd0;
                RID_M1 = 4'd0;
                RDATA_M0 = 32'd0;
                RDATA_M1 = 32'd0;
                RRESP_M0 = 2'd0;
                RRESP_M1 = 2'd0;
                RLAST_M0 = 1'd0;
                RLAST_M1 = 1'd0;
                RVALID_M0 = 1'd0;
                RVALID_M1 = 1'd0;
                RREADY_S0 = 1'b0;
                RREADY_S1 = 1'b0;
                RREADY_S2 = 1'b0;
                RREADY_S4 = 1'b0;
            end
        end
        `M1_read:
        begin
            if(RID_S0[7:4]==4'b0010&&RVALID_S0)
            begin
                RID_M0 = 4'd0;
                RID_M1 = RID_S0[3:0];
                RDATA_M0 = 32'd0;
                RDATA_M1 = RDATA_S0;
                RRESP_M0 = 2'd0;
                RRESP_M1 = RRESP_S0;
                RLAST_M0 = 1'd0;
                RLAST_M1 = RLAST_S0;
                RVALID_M0 = 1'd0;
                RVALID_M1 = RVALID_S0;
                RREADY_S0 = RREADY_M1;
                RREADY_S1 = 1'd0;
                RREADY_S2 = 1'd0;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S1[7:4]==4'b0010&&RVALID_S1)
            begin
                RID_M0 = 4'd0;
                RID_M1 = RID_S1[3:0];
                RDATA_M0 = 32'd0;
                RDATA_M1 = RDATA_S1;
                RRESP_M0 = 2'd0;
                RRESP_M1 = RRESP_S1;
                RLAST_M0 = 1'd0;
                RLAST_M1 = RLAST_S1;
                RVALID_M0 = 1'd0;
                RVALID_M1 = RVALID_S1;
                RREADY_S0 = 1'd0;
                RREADY_S1 = RREADY_M1;
                RREADY_S2 = 1'd0;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S2[7:4]==4'b0010&&RVALID_S2)
            begin
                RID_M0 = 4'd0;
                RID_M1 = RID_S2[3:0];
                RDATA_M0 = 32'd0;
                RDATA_M1 = RDATA_S2;
                RRESP_M0 = 2'd0;
                RRESP_M1 = RRESP_S2;
                RLAST_M0 = 1'd0;
                RLAST_M1 = RLAST_S2;
                RVALID_M0 = 1'd0;
                RVALID_M1 = RVALID_S2;
                RREADY_S0 = 1'd0;
                RREADY_S1 = 1'd0;
                RREADY_S2 = RREADY_M1;
                RREADY_S4 = 1'd0;
            end
            else if(RID_S4[7:4]==4'b0010&&RVALID_S4)
            begin
                RID_M0 = 4'd0;
                RID_M1 = RID_S4[3:0];
                RDATA_M0 = 32'd0;
                RDATA_M1 = RDATA_S4;
                RRESP_M0 = 2'd0;
                RRESP_M1 = RRESP_S4;
                RLAST_M0 = 1'd0;
                RLAST_M1 = RLAST_S4;
                RVALID_M0 = 1'd0;
                RVALID_M1 = RVALID_S4;
                RREADY_S0 = 1'd0;
                RREADY_S1 = 1'd0;
                RREADY_S2 = 1'd0;
                RREADY_S4 = RREADY_M1;
            end
            else
            begin
                RID_M0 = 4'd0;
                RID_M1 = 4'd0;
                RDATA_M0 = 32'd0;
                RDATA_M1 = 32'd0;
                RRESP_M0 = 2'd0;
                RRESP_M1 = 2'd0;
                RLAST_M0 = 1'd0;
                RLAST_M1 = 1'd0;
                RVALID_M0 = 1'd0;
                RVALID_M1 = 1'd0;
                RREADY_S0 = 1'b0;
                RREADY_S1 = 1'b0;
                RREADY_S2 = 1'b0;
                RREADY_S4 = 1'b0;
            end
        end
        default:
        begin
            RID_M0 = 4'd0;
            RID_M1 = 4'd0;
            RDATA_M0 = 32'd0;
            RDATA_M1 = 32'd0;
            RRESP_M0 = 2'd0;
            RRESP_M1 = 2'd0;
            RLAST_M0 = 1'd0;
            RLAST_M1 = 1'd0;
            RVALID_M0 = 1'd0;
            RVALID_M1 = 1'd0;
            RREADY_S0 = 1'b0;
            RREADY_S1 = 1'b0;
            RREADY_S2 = 1'b0;
            RREADY_S4 = 1'b0;
        end
    endcase
end

//write arbiter
reg[2:0]Write_cs,Write_ns;
always@(posedge ACLK or negedge ARESETn)
begin
    if(~ARESETn)
    begin
        Write_cs <= 3'd0;
    end
    else
    begin
        Write_cs <= Write_ns;
    end
end

always@(*)
begin
    case(Write_cs)
        `initial_write:
            Write_ns = (AWVALID_M1 && AWADDR_M1[31:16]==16'h0001)? `M1_write_S1:
                       (AWVALID_M1 && AWADDR_M1[31:16]==16'h0002)? `M1_write_S2:
                       (AWVALID_M1 && AWADDR_M1[31:24]==8'h20)? `M1_write_S4 : `initial_write;
        `M1_write_S1:
            Write_ns = (AWREADY_M1 && WLAST_M1 && WVALID_M1 && WREADY_M1)? `M1_RESP : `M1_write_S1;
        `M1_write_S2:
            Write_ns = (AWREADY_M1 && WLAST_M1 && WVALID_M1 && WREADY_M1)? `M1_RESP : `M1_write_S2;
        `M1_write_S4:
            Write_ns = (AWREADY_M1 && WLAST_M1 && WVALID_M1 && WREADY_M1)? `M1_RESP : `M1_write_S4;
        `M1_RESP:
            Write_ns = (BVALID_M1 && BREADY_M1)? `initial_write : `M1_RESP;
        default:
            Write_ns = `initial_write;
    endcase
end

//AW channel
always@(*)
begin
    case(Write_cs)
        `initial_write,`M1_RESP:
        begin
            AWID_S1 = 8'd0;
            AWID_S2 = 8'd0;
            AWID_S4 = 8'd0;
            AWADDR_S1 = 32'd0;
            AWADDR_S2 = 32'd0;
            AWADDR_S4 = 32'd0;
            AWLEN_S1 = 4'd0;
            AWLEN_S2 = 4'd0;
            AWLEN_S4 = 4'd0;
            AWSIZE_S1 = 3'd0;
            AWSIZE_S2 = 3'd0;
            AWSIZE_S4 = 3'd0;
            AWBURST_S1 = 2'd0;
            AWBURST_S2 = 2'd0;
            AWBURST_S4 = 2'd0;
            AWVALID_S1 = 1'd0;
            AWVALID_S2 = 1'd0;
            AWVALID_S4 = 1'd0;
            AWREADY_M1 = 1'd0;
        end
        `M1_write_S1:
        begin
            AWID_S1 = {4'b0010,AWID_M1};
            AWID_S2 = 8'd0;
            AWID_S4 = 8'd0;
            AWADDR_S1 = AWADDR_M1;
            AWADDR_S2 = 32'd0;
            AWADDR_S4 = 32'd0;
            AWLEN_S1 = AWLEN_M1;
            AWLEN_S2 = 4'd0;
            AWLEN_S4 = 4'd0;
            AWSIZE_S1 = AWSIZE_M1;
            AWSIZE_S2 = 3'd0;
            AWSIZE_S4 = 3'd0;
            AWBURST_S1 = AWBURST_M1;
            AWBURST_S2 = 2'd0;
            AWBURST_S4 = 2'd0;
            AWVALID_S1 = AWVALID_M1;
            AWVALID_S2 = 1'd0;
            AWVALID_S4 = 1'd0;
            AWREADY_M1 = AWREADY_S1;
        end
        `M1_write_S2:
        begin
            AWID_S1 = 8'd0;
            AWID_S2 = {4'b0010,AWID_M1};
            AWID_S4 = 8'd0;
            AWADDR_S1 = 32'd0;
            AWADDR_S2 = AWADDR_M1;
            AWADDR_S4 = 32'd0;
            AWLEN_S1 = 4'd0;
            AWLEN_S2 = AWLEN_M1;
            AWLEN_S4 = 4'd0;
            AWSIZE_S1 = 3'd0;
            AWSIZE_S2 = AWSIZE_M1;
            AWSIZE_S4 = 3'd0;
            AWBURST_S1 = 2'd0;
            AWBURST_S2 = AWBURST_M1;
            AWBURST_S4 = 2'd0;
            AWVALID_S1 = 1'd0;
            AWVALID_S2 = AWVALID_M1;
            AWVALID_S4 = 1'd0;
            AWREADY_M1 = AWREADY_S2;
        end
        `M1_write_S4:
        begin
            AWID_S1 = 8'd0;
            AWID_S2 = 8'd0;
            AWID_S4 = {4'b0010,AWID_M1};
            AWADDR_S1 = 32'd0;
            AWADDR_S2 = 32'd0;
            AWADDR_S4 = AWADDR_M1;
            AWLEN_S1 = 4'd0;
            AWLEN_S2 = 4'd0;
            AWLEN_S4 = AWLEN_M1;
            AWSIZE_S1 = 3'd0;
            AWSIZE_S2 = 3'd0;
            AWSIZE_S4 = AWSIZE_M1;
            AWBURST_S1 = 2'd0;
            AWBURST_S2 = 2'd0;
            AWBURST_S4 = AWBURST_M1;
            AWVALID_S1 = 1'd0;
            AWVALID_S2 = 1'd0;
            AWVALID_S4 = AWVALID_M1;
            AWREADY_M1 = AWREADY_S4;
        end
	   default:
        begin
            AWID_S1 = 8'd0;
            AWID_S2 = 8'd0;
            AWID_S4 = 8'd0;
            AWADDR_S1 = 32'd0;
            AWADDR_S2 = 32'd0;
            AWADDR_S4 = 32'd0;
            AWLEN_S1 = 4'd0;
            AWLEN_S2 = 4'd0;
            AWLEN_S4 = 4'd0;
            AWSIZE_S1 = 3'd0;
            AWSIZE_S2 = 3'd0;
            AWSIZE_S4 = 3'd0;
            AWBURST_S1 = 2'd0;
            AWBURST_S2 = 2'd0;
            AWBURST_S4 = 2'd0;
            AWVALID_S1 = 1'd0;
            AWVALID_S2 = 1'd0;
            AWVALID_S4 = 1'd0;
            AWREADY_M1 = 1'd0;
        end
    endcase
end

//write data channel
always@(*)
begin
    case(Write_cs)
        `initial_write,`M1_RESP:
        begin
            WDATA_S1 = 32'd0;
            WDATA_S2 = 32'd0;
            WDATA_S4 = 32'd0;
            WSTRB_S1 = 4'd0;
            WSTRB_S2 = 4'd0;
            WSTRB_S4 = 4'd0;
            WLAST_S1 = 1'd0;
            WLAST_S2 = 1'd0;
            WLAST_S4 = 1'd0;
            WVALID_S1 = 1'd0;
            WVALID_S2 = 1'd0;
            WVALID_S4 = 1'd0;
            WREADY_M1 = 1'd0;
        end
        `M1_write_S1:
        begin
            WDATA_S1 = WDATA_M1;
            WDATA_S2 = 32'd0;
            WDATA_S4 = 32'd0;
            WSTRB_S1 = WSTRB_M1;
            WSTRB_S2 = 4'd0;
            WSTRB_S4 = 4'd0;
            WLAST_S1 = WLAST_M1;
            WLAST_S2 = 1'd0;
            WLAST_S4 = 1'd0;
            WVALID_S1 = WVALID_M1;
            WVALID_S2 = 1'd0;
            WVALID_S4 = 1'd0;
            WREADY_M1 = WREADY_S1;
        end
        `M1_write_S2:
        begin
            WDATA_S1 = 32'd0;
            WDATA_S2 = WDATA_M1;
            WDATA_S4 = 32'd0;
            WSTRB_S1 = 4'd0;
            WSTRB_S2 = WSTRB_M1;
            WSTRB_S4 = 4'd0;
            WLAST_S1 = 1'd0;
            WLAST_S2 = WLAST_M1;
            WLAST_S4 = 1'd0;
            WVALID_S1 = 1'd0;
            WVALID_S2 = WVALID_M1;
            WVALID_S4 = 1'd0;
            WREADY_M1 = WREADY_S2;
        end
        `M1_write_S4:
        begin
            WDATA_S1 = 32'd0;
            WDATA_S2 = 32'd0;
            WDATA_S4 = WDATA_M1;
            WSTRB_S1 = 4'd0;
            WSTRB_S2 = 4'd0;
            WSTRB_S4 = WSTRB_M1;
            WLAST_S1 = 1'd0;
            WLAST_S2 = 1'd0;
            WLAST_S4 = WLAST_M1;
            WVALID_S1 = 1'd0;
            WVALID_S2 = 1'd0;
            WVALID_S4 = WVALID_M1;
            WREADY_M1 = WREADY_S4;
        end
	  default:
        begin
            WDATA_S1 = 32'd0;
            WDATA_S2 = 32'd0;
            WDATA_S4 = 32'd0;
            WSTRB_S1 = 4'd0;
            WSTRB_S2 = 4'd0;
            WSTRB_S4 = 4'd0;
            WLAST_S1 = 1'd0;
            WLAST_S2 = 1'd0;
            WLAST_S4 = 1'd0;
            WVALID_S1 = 1'd0;
            WVALID_S2 = 1'd0;
            WVALID_S4 = 1'd0;
            WREADY_M1 = 1'd0;
        end
    endcase
end

//write response channel
always@(*)
begin
    case(Write_cs)
        `initial_write,`M1_write_S1,`M1_write_S2,`M1_write_S4:
        begin
            BID_M1 = 4'd0;
            BRESP_M1 = 2'b00;
            BVALID_M1 = 1'd0;
            BREADY_S1 = 1'd0;
            BREADY_S2 = 1'd0;
            BREADY_S4 = 1'd0;
        end
        `M1_RESP:
        begin
            if(BVALID_S1)
            begin
                BID_M1 = BID_S1[3:0];
                BRESP_M1 = BRESP_S1;
                BVALID_M1 = BVALID_S1;
                BREADY_S1 = BREADY_M1;
                BREADY_S2 = 1'd0;
                BREADY_S4 = 1'd0;
            end
            else if(BVALID_S2)
            begin
                BID_M1 = BID_S2[3:0];
                BRESP_M1 = BRESP_S2;
                BVALID_M1 = BVALID_S2;
                BREADY_S1 = 1'd0;
                BREADY_S2 = BREADY_M1;
                BREADY_S4 = 1'd0;
            end
            else if(BVALID_S4)
            begin
                BID_M1 = BID_S4[3:0];
                BRESP_M1 = BRESP_S4;
                BVALID_M1 = BVALID_S4;
                BREADY_S1 = 1'd0;
                BREADY_S2 = 1'd0;
                BREADY_S4 = BREADY_M1;
            end
            else
            begin
                BID_M1 = 4'd0;
                BRESP_M1 = 2'b00;
                BVALID_M1 = 1'd0;
                BREADY_S1 = 1'd0;
                BREADY_S2 = 1'd0;
                BREADY_S4 = 1'd0;
            end
        end
	  default:
	  begin
            BID_M1 = 4'd0;
            BRESP_M1 = 2'b00;
            BVALID_M1 = 1'd0;
            BREADY_S1 = 1'd0;
            BREADY_S2 = 1'd0;
            BREADY_S4 = 1'd0;
        end
    endcase
end




endmodule
