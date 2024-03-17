//================================================
// Auther:      Yang Chun-Wen (Willie)
// Filename:    AXI.sv
// Description: Top module of AXI
// Version:     1.0
//================================================
`include "AXI_define.svh"
`include "AXI_state.svh"

module AXI(

           input ACLK,
           input ARESETn,

           //SLAVE INTERFACE FOR MASTERS
           //WRITE ADDRESS
           input [`AXI_ID_BITS-1:0] AWID_M1,
           input [`AXI_ADDR_BITS-1:0] AWADDR_M1,
           input [`AXI_LEN_BITS-1:0] AWLEN_M1,
           input [`AXI_SIZE_BITS-1:0] AWSIZE_M1,
           input [1:0] AWBURST_M1,
           input AWVALID_M1,
           output reg AWREADY_M1,
           //WRITE DATA
           input [`AXI_DATA_BITS-1:0] WDATA_M1,
           input [`AXI_STRB_BITS-1:0] WSTRB_M1,
           input WLAST_M1,
           input WVALID_M1,
           output reg WREADY_M1,
           //WRITE RESPONSE
           output reg[`AXI_ID_BITS-1:0] BID_M1,
           output reg[1:0] BRESP_M1,
           output reg BVALID_M1,
           input BREADY_M1,

           //READ ADDRESS0
           input [`AXI_ID_BITS-1:0] ARID_M0,
           input [`AXI_ADDR_BITS-1:0] ARADDR_M0,
           input [`AXI_LEN_BITS-1:0] ARLEN_M0,
           input [`AXI_SIZE_BITS-1:0] ARSIZE_M0,
           input [1:0] ARBURST_M0,
           input ARVALID_M0,
           output reg ARREADY_M0,
           //READ DATA0
           output reg[`AXI_ID_BITS-1:0] RID_M0,
           output reg[`AXI_DATA_BITS-1:0] RDATA_M0,
           output reg[1:0] RRESP_M0,
           output reg RLAST_M0,
           output reg RVALID_M0,
           input RREADY_M0,
           //READ ADDRESS1
           input [`AXI_ID_BITS-1:0] ARID_M1,
           input [`AXI_ADDR_BITS-1:0] ARADDR_M1,
           input [`AXI_LEN_BITS-1:0] ARLEN_M1,
           input [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
           input [1:0] ARBURST_M1,
           input ARVALID_M1,
           output reg ARREADY_M1,
           //READ DATA1
           output reg[`AXI_ID_BITS-1:0] RID_M1,
           output reg[`AXI_DATA_BITS-1:0] RDATA_M1,
           output reg[1:0] RRESP_M1,
           output reg RLAST_M1,
           output reg RVALID_M1,
           input RREADY_M1,

           //MASTER INTERFACE FOR SLAVES
           //WRITE ADDRESS0
           output reg[`AXI_IDS_BITS-1:0] AWID_S0,
           output reg[`AXI_ADDR_BITS-1:0] AWADDR_S0,
           output reg[`AXI_LEN_BITS-1:0] AWLEN_S0,
           output reg[`AXI_SIZE_BITS-1:0] AWSIZE_S0,
           output reg[1:0] AWBURST_S0,
           output reg AWVALID_S0,
           input AWREADY_S0,
           //WRITE DATA0
           output reg[`AXI_DATA_BITS-1:0] WDATA_S0,
           output reg[`AXI_STRB_BITS-1:0] WSTRB_S0,
           output reg WLAST_S0,
           output reg WVALID_S0,
           input WREADY_S0,
           //WRITE RESPONSE0
           input [`AXI_IDS_BITS-1:0] BID_S0,
           input [1:0] BRESP_S0,
           input BVALID_S0,
           output reg BREADY_S0,

           //WRITE ADDRESS1
           output reg[`AXI_IDS_BITS-1:0] AWID_S1,
           output reg[`AXI_ADDR_BITS-1:0] AWADDR_S1,
           output reg[`AXI_LEN_BITS-1:0] AWLEN_S1,
           output reg[`AXI_SIZE_BITS-1:0] AWSIZE_S1,
           output reg[1:0] AWBURST_S1,
           output reg AWVALID_S1,
           input AWREADY_S1,
           //WRITE DATA1
           output reg[`AXI_DATA_BITS-1:0] WDATA_S1,
           output reg[`AXI_STRB_BITS-1:0] WSTRB_S1,
           output reg WLAST_S1,
           output reg WVALID_S1,
           input WREADY_S1,
           //WRITE RESPONSE1
           input [`AXI_IDS_BITS-1:0] BID_S1,
           input [1:0] BRESP_S1,
           input BVALID_S1,
           output reg BREADY_S1,

           //READ ADDRESS0
           output reg[`AXI_IDS_BITS-1:0] ARID_S0,
           output reg[`AXI_ADDR_BITS-1:0] ARADDR_S0,
           output reg[`AXI_LEN_BITS-1:0] ARLEN_S0,
           output reg[`AXI_SIZE_BITS-1:0] ARSIZE_S0,
           output reg[1:0] ARBURST_S0,
           output reg ARVALID_S0,
           input ARREADY_S0,
           //READ DATA0
           input [`AXI_IDS_BITS-1:0] RID_S0,
           input [`AXI_DATA_BITS-1:0] RDATA_S0,
           input [1:0] RRESP_S0,
           input RLAST_S0,
           input RVALID_S0,
           output reg RREADY_S0,
           //READ ADDRESS1
           output reg [`AXI_IDS_BITS-1:0] ARID_S1,
           output reg [`AXI_ADDR_BITS-1:0] ARADDR_S1,
           output reg [`AXI_LEN_BITS-1:0] ARLEN_S1,
           output reg [`AXI_SIZE_BITS-1:0] ARSIZE_S1,
           output reg [1:0] ARBURST_S1,
           output reg ARVALID_S1,
           input ARREADY_S1,
           //READ DATA1
           input [`AXI_IDS_BITS-1:0] RID_S1,
           input [`AXI_DATA_BITS-1:0] RDATA_S1,
           input [1:0] RRESP_S1,
           input RLAST_S1,
           input RVALID_S1,
           output reg RREADY_S1

       );
//---------- you should put your design here ----------//

//read arbiter
reg[2:0]Read_cs,Read_ns;
always@(posedge ACLK or negedge ARESETn)
begin
    if(~ARESETn)
    begin
        Read_cs <= 3'd0;
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
            Read_ns=(ARVALID_M0&&ARADDR_M0[31:16]==16'd0)?3'd1:(ARVALID_M0&&ARADDR_M0[31:16]==16'd1)?3'd2:(ARVALID_M1&&ARADDR_M1[31:16]==16'd1)?3'd4:(ARVALID_M1&&ARADDR_M1[31:16]==16'd0)?3'd5:3'd0;
        `M0_AR_S0:
            Read_ns=(ARREADY_M0)?3'd3:3'd1;
        `M0_AR_S1:
            Read_ns=(ARREADY_M0)?3'd3:3'd2;
        `M0_read:
            Read_ns=(RVALID_M0&&RREADY_M0&&RLAST_M0)?3'd0:3'd3;
        `M1_AR_S1:
            Read_ns=(ARREADY_M1)?3'd6:3'd4;
        `M1_AR_S0:
            Read_ns=(ARREADY_M1)?3'd6:3'd5;
        `M1_read:
            Read_ns=(RVALID_M1&&RREADY_M1&&RLAST_M1)?3'd0:3'd6;
        default:
            Read_ns=3'd0;
    endcase
end

//AR channel
always@(*)
begin
    case(Read_cs)
        `initial_read:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARREADY_M0 = 1'b0;
            ARREADY_M1 = 1'b0;
        end
        `M0_AR_S0:  //4'b0001 M0 ARID
        begin
            ARID_S0 = {4'b0001, ARID_M0};
            ARID_S1 = 8'd0;
            ARADDR_S0 = ARADDR_M0;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 = ARLEN_M0;
            ARLEN_S1 = 4'd0;
            ARSIZE_S0 = ARSIZE_M0;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = ARBURST_M0;
            ARBURST_S1 = 2'b00;
            ARVALID_S0 = ARVALID_M0;
            ARVALID_S1 = 1'd0;
            ARREADY_M0 = ARREADY_S0;
            ARREADY_M1 = 1'd0;
        end
        `M0_AR_S1:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = {4'b0001, ARID_M0};
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = ARADDR_M0;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = ARLEN_M0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = ARSIZE_M0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = ARBURST_M0;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = ARVALID_M0;
            ARREADY_M0 = ARREADY_S1;
            ARREADY_M1 = 1'd0;
        end
        `M0_read:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARREADY_M0 = 1'b0;
            ARREADY_M1 = 1'b0;
        end
        `M1_AR_S1:   //4'b0010 M1 AWID
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = {4'b0010, ARID_M1};
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = ARADDR_M1;
            ARLEN_S0 = 4'd0;
            ARLEN_S1 = ARLEN_M1;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = ARSIZE_M1;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = ARBURST_M1;
            ARVALID_S0 = 1'd0;
            ARVALID_S1 = ARVALID_M1;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S1;
        end
        `M1_AR_S0:
        begin
            ARID_S0 = {4'b0010, ARID_M1};
            ARID_S1 = 8'd0;
            ARADDR_S0 = ARADDR_M1;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 = ARLEN_M1;
            ARLEN_S1 = 4'd0;
            ARSIZE_S0 = ARSIZE_M1;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = ARBURST_M1;
            ARBURST_S1 = 2'b00;
            ARVALID_S0 = ARVALID_M1;
            ARVALID_S1 = 1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = ARREADY_S0;
        end
        `M1_read:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = 2'b00;
            ARBURST_S1 = 2'b00;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARREADY_M0 = 1'b0;
            ARREADY_M1 = 1'b0;
        end
        default:
        begin
            ARID_S0 = 8'd0;
            ARID_S1 = 8'd0;
            ARADDR_S0 = 32'd0;
            ARADDR_S1 = 32'd0;
            ARLEN_S0 =  4'd0;
            ARLEN_S1 =  4'd0;
            ARSIZE_S0 = 3'd0;
            ARSIZE_S1 = 3'd0;
            ARBURST_S0 = 2'b01;
            ARBURST_S1 = 2'b01;
            ARVALID_S0 =1'd0;
            ARVALID_S1 =1'd0;
            ARREADY_M0 = 1'd0;
            ARREADY_M1 = 1'd0;
        end
    endcase
end


//R channel
always@(*)
begin
    case(Read_cs)
        `initial_read,`M0_AR_S0,`M0_AR_S1,`M1_AR_S1,`M1_AR_S0:
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
                RREADY_S1 = 1'b0;
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
                RREADY_S0 = 1'b0;
                RREADY_S1 = RREADY_M0;
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
                RREADY_S0 = 1'b0;
                RREADY_S1 = RREADY_M1;
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
            Write_ns=(AWVALID_M1&&AWADDR_M1[31:16]==16'd1)?3'd2:(AWVALID_M1&&AWADDR_M1[31:16]==16'd0)?3'd4:3'd0;
        `M1_write_S1:
            Write_ns=(AWREADY_M1&&WLAST_M1&&WVALID_M1&&WREADY_M1)?3'd5:3'd2;
        `M1_write_S0:
            Write_ns=(AWREADY_M1&&WLAST_M1&&WVALID_M1&&WREADY_M1)?3'd5:3'd4;
        `M1_RESP:
            Write_ns=(BVALID_M1&&BREADY_M1)?3'd0:3'd5;
        default:
            Write_ns=3'd0;
    endcase
end

//AW channel
always@(*)
begin
    case(Write_cs)
        `initial_write,`M1_RESP:
        begin
            AWID_S0 = 8'd0;
            AWID_S1 = 8'd0;
            AWADDR_S0 = 32'd0;
            AWADDR_S1 = 32'd0;
            AWLEN_S0 = 4'd0;
            AWLEN_S1 = 4'd0;
            AWSIZE_S0 = 3'd0;
            AWSIZE_S1 = 3'd0;
            AWBURST_S0 = 2'd0;
            AWBURST_S1 = 2'd0;
            AWVALID_S0 = 1'd0;
            AWVALID_S1 = 1'd0;
            AWREADY_M1 = 1'd0;
        end
        `M1_write_S1:
        begin
            AWID_S0 = 8'd0;
            AWID_S1 = {4'b0010,AWID_M1};
            AWADDR_S0 = 32'd0;
            AWADDR_S1 = AWADDR_M1;
            AWLEN_S0 = 4'd0;
            AWLEN_S1 = AWLEN_M1;
            AWSIZE_S0 = 3'd0;
            AWSIZE_S1 = AWSIZE_M1;
            AWBURST_S0 = 2'd0;
            AWBURST_S1 = AWBURST_M1;
            AWVALID_S0 = 1'd0;
            AWVALID_S1 = AWVALID_M1;
            AWREADY_M1 = AWREADY_S1;
        end

        `M1_write_S0:
        begin
            AWID_S0 = {4'b0010,AWID_M1};
            AWID_S1 = 8'd0;
            AWADDR_S0 = AWADDR_M1;
            AWADDR_S1 = 32'd0;
            AWLEN_S0 = AWLEN_M1;
            AWLEN_S1 = 4'd0;
            AWSIZE_S0 = AWSIZE_M1;
            AWSIZE_S1 = 3'd0;
            AWBURST_S0 = AWBURST_M1;
            AWBURST_S1 = 2'd0;
            AWVALID_S0 = AWVALID_M1;
            AWVALID_S1 = 1'd0;
            AWREADY_M1 = AWREADY_S0;
        end
	   default:
        begin
            AWID_S0 = 8'd0;
            AWID_S1 = 8'd0;
            AWADDR_S0 = 32'd0;
            AWADDR_S1 = 32'd0;
            AWLEN_S0 = 4'd0;
            AWLEN_S1 = 4'd0;
            AWSIZE_S0 = 3'd0;
            AWSIZE_S1 = 3'd0;
            AWBURST_S0 = 2'd0;
            AWBURST_S1 = 2'd0;
            AWVALID_S0 = 1'd0;
            AWVALID_S1 = 1'd0;
            AWREADY_M1 = 1'd0;
        end
    endcase
end

//write data channel
always@(*)
begin
    case(Write_cs)
        `initial_write:
        begin
            WDATA_S0 = 32'd0;
            WDATA_S1 = 32'd0;
            WSTRB_S0 = 4'd0;
            WSTRB_S1 = 4'd0;
            WLAST_S0 = 1'd0;
            WLAST_S1 = 1'd0;
            WVALID_S0 = 1'd0;
            WVALID_S1 = 1'd0;
            WREADY_M1 = 1'd0;
        end
        `M1_write_S1:
        begin
            begin
                WDATA_S0 = 32'd0;
                WDATA_S1 = WDATA_M1;
                WSTRB_S0 = 4'd0;
                WSTRB_S1 = WSTRB_M1;
                WLAST_S0 = 1'd0;
                WLAST_S1 = WLAST_M1;
                WVALID_S0 = 1'd0;
                WVALID_S1 = WVALID_M1;
                WREADY_M1 = WREADY_S1;
            end
        end
        `M1_write_S0:
        begin
            WDATA_S0 = WDATA_M1;
            WDATA_S1 = 32'd0;
            WSTRB_S0 = WSTRB_M1;
            WSTRB_S1 = 4'd0;
            WLAST_S0 = WLAST_M1;
            WLAST_S1 = 1'd0;
            WVALID_S0 = WVALID_M1;
            WVALID_S1 = 1'd0;
            WREADY_M1 = WREADY_S0;
        end
        `M1_RESP:
        begin
            WDATA_S0 = 32'd0;
            WDATA_S1 = 32'd0;
            WSTRB_S0 = 4'd0;
            WSTRB_S1 = 4'd0;
            WLAST_S0 = 1'd0;
            WLAST_S1 = 1'd0;
            WVALID_S0 = 1'd0;
            WVALID_S1 = 1'd0;
            WREADY_M1 = 1'd0;
        end
	  default:
        begin
            WDATA_S0 = 32'd0;
            WDATA_S1 = 32'd0;
            WSTRB_S0 = 4'd0;
            WSTRB_S1 = 4'd0;
            WLAST_S0 = 1'd0;
            WLAST_S1 = 1'd0;
            WVALID_S0 = 1'd0;
            WVALID_S1 = 1'd0;
            WREADY_M1 = 1'd0;
        end
    endcase
end

//write response channel
always@(*)
begin
    case(Write_cs)
        `initial_write,`M1_write_S1,`M1_write_S0:
        begin
            BID_M1 = 4'd0;
            BRESP_M1 = 2'b00;
            BVALID_M1 = 1'd0;
            BREADY_S0 = 1'd0;
            BREADY_S1 = 1'd0;
        end
        `M1_RESP:
        begin
            if(BVALID_S1)
            begin
                BID_M1 = BID_S1[3:0];
                BRESP_M1 = BRESP_S1;
                BVALID_M1 = BVALID_S1;
                BREADY_S0 = 1'd0;
                BREADY_S1 = BREADY_M1;
            end
            else if(BVALID_S0)
            begin
                BID_M1 = BID_S0[3:0];
                BRESP_M1 = BRESP_S0;
                BVALID_M1 = BVALID_S0;
                BREADY_S0 = BREADY_M1;
                BREADY_S1 = 1'd0;
            end
            else
            begin
                BID_M1 = 4'd0;
                BRESP_M1 = 2'b00;
                BVALID_M1 = 1'd0;
                BREADY_S0 = 1'd0;
                BREADY_S1 = 1'd0;
            end
        end
	  default:
	  begin
            BID_M1 = 4'd0;
            BRESP_M1 = 2'b00;
            BVALID_M1 = 1'd0;
            BREADY_S0 = 1'd0;
            BREADY_S1 = 1'd0;
        end
    endcase
end




endmodule

