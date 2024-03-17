`include "AXI/AXI_define.svh"

module DRAM_wrapper(
           input                            clk,
           input                            rst_n,
           input  [31:0]                    DRAM_Q,
           input                            DRAM_valid,
           output logic                     DRAM_CSn,
           output logic [3:0]               DRAM_WEn,
           output logic                     DRAM_RASn,
           output logic                     DRAM_CASn,
           output logic [10:0]              DRAM_A,
           output logic [31:0]              DRAM_D,
           //READ ADDRESS
           input [`AXI_IDS_BITS-1:0]        ARID,
           input [`AXI_ADDR_BITS-1:0]       ARADDR,
           input [`AXI_LEN_BITS-1:0]        ARLEN,
           input [`AXI_SIZE_BITS-1:0]       ARSIZE,
           input [1:0]                      ARBURST,
           input                            ARVALID,
           output logic                     ARREADY,
           //READ DATA
           output logic [`AXI_IDS_BITS-1:0] RID,
           output logic [`AXI_DATA_BITS-1:0]RDATA,
           output logic [1:0]               RRESP,
           output logic                     RLAST,
           output logic                     RVALID,
           input                            RREADY,

           //WRITE ADDRESS
           input [`AXI_IDS_BITS-1:0]        AWID,
           input [`AXI_ADDR_BITS-1:0]       AWADDR,
           input [`AXI_LEN_BITS-1:0]        AWLEN,
           input [`AXI_SIZE_BITS-1:0]       AWSIZE,
           input [1:0]                      AWBURST,
           input                            AWVALID,
           output logic                     AWREADY,
           //WRITE DATA
           input [`AXI_DATA_BITS-1:0]       WDATA,
           input [`AXI_STRB_BITS-1:0]       WSTRB,
           input                            WLAST,
           input                            WVALID,
           output logic                     WREADY,
           //WRITE RESPONSE
           output logic [`AXI_IDS_BITS-1:0] BID,
           output logic [1:0]               BRESP,
           output logic                     BVALID,
           input                            BREADY
       );
//state name
parameter Idle = 4'd0;
parameter Read_Act = 4'd1;
parameter count0 = 4'd2;
parameter Read_col_addr = 4'd3;
parameter ReadData = 4'd4;
parameter burst = 4'd5;
parameter Write_Act = 4'd6;
parameter count1 = 4'd7;
parameter Write_col_addr = 4'd8;
parameter WriteData = 4'd9;
parameter count3 = 4'd10;
parameter BResp = 4'd11;
parameter precharge = 4'd12;
parameter count2 = 4'd13; 

reg [3:0]cs,ns;
reg [2:0]cnt,Readcnt;
reg [3:0]ARLEN_reg;
reg [31:0]A_reg;
reg [7:0]ARID_reg,AWID_reg;
reg [31:0]WDATA_reg;

always@(posedge clk)
begin
    if(~rst_n)
        cs <= 4'd0;
    else
        cs <= ns;
end

always@(*)
begin
    case(cs)
        Idle:
            ns = (AWVALID && AWREADY && (A_reg[22:12]==AWADDR[22:12]))? Write_col_addr: //row hit
                 (AWVALID && AWREADY)? Write_Act:
                 (ARVALID && ARREADY && (A_reg[22:12]==ARADDR[22:12]))? Read_col_addr: //row hit
                 (ARVALID && ARREADY)? Read_Act : Idle;
        Read_Act:
            ns = count0;
        count0:
            ns = (cnt == 3'd3)? Read_col_addr : count0;
        Read_col_addr:
            ns = ReadData;
        ReadData:
            ns = (RVALID && RREADY)? burst : ReadData;               
        burst:
            ns = (Readcnt == (ARLEN_reg + 1))? precharge : count0;
        Write_Act:
            ns = count1;
        count1:
            ns = (cnt == 3'd3)? Write_col_addr : count1;
        Write_col_addr:
            ns = WriteData;
        WriteData:
            ns = (WVALID && WREADY && WLAST)? count3 : WriteData;
        count3:
            ns = BResp;
        BResp:
            ns = (BVALID && BREADY)? precharge : BResp;
        precharge :
            ns = count2;
        count2:
            ns = (cnt == 3'd3)? Idle : count2;
        default:
            ns = Idle;
    endcase
end

always@(posedge clk)
begin
    if(~rst_n)
        Readcnt <= 3'd0;
    else if(cs == Idle)
        Readcnt <= 3'd0;
    else if(cs ==ReadData && RREADY && RVALID)
        Readcnt <= Readcnt + 3'd1;
    else 
        Readcnt <= Readcnt; 
end

always@(posedge clk)
begin
    if(~rst_n)
        cnt <= 3'd0;
    else if((cs == count0) || (cs == count1) || (cs == count2) || (cs == count3))
        cnt <= cnt + 3'd1;
    else
        cnt <= 3'd0;
end


always@(posedge clk)
begin
    if(~rst_n)
        A_reg <= 32'd0;
    else if((cs == Idle) && ARVALID && ARREADY)
        A_reg <= ARADDR;
    else if((cs == Idle) && AWVALID && AWREADY)
        A_reg <= AWADDR;
    else
        A_reg <= A_reg;
end

always@(posedge clk)
begin
    if(~rst_n)
        ARLEN_reg <= 4'd0;
    else if(cs == Idle && ARVALID && ARREADY)
        ARLEN_reg <= ARLEN;
    else   
        ARLEN_reg <= ARLEN_reg;
end

always@(posedge clk)
begin
    if(~rst_n)
        ARID_reg <= 8'd0;
    else if((cs == Idle) && ARVALID && ARREADY)
        ARID_reg <= ARID;
    else
        ARID_reg <= ARID_reg;
end

always@(posedge clk)
begin
    if(~rst_n)
        AWID_reg <= 8'd0;
    else if((cs == Idle) && AWVALID && AWREADY)
        AWID_reg <= AWID;
    else
        AWID_reg <= AWID_reg;
end

always@(posedge clk)
begin
    if(~rst_n)
        WDATA_reg <= 32'd0;
    else if(cs == WriteData && WVALID && WREADY) 
        WDATA_reg <= WDATA;
    else
        WDATA_reg <= WDATA_reg;
end

assign RID    = ARID_reg;
assign RDATA  = DRAM_Q;
assign RRESP  = 2'b00;
assign RLAST  = ((cs == ReadData) && (Readcnt == ARLEN_reg) && RVALID)? 1'd1 : 1'd0;
assign RVALID = DRAM_valid;

assign ARREADY = (cs == Idle)? 1'd1 : 1'd0;
assign AWREADY = (cs == Idle || cs == WriteData)? 1'd1 : 1'd0;
assign WREADY  = (cs == WriteData)? 1'd1 : 1'd0;

assign BID    = AWID_reg;
assign BRESP  = 2'b00;
assign BVALID = (cs == BResp)? 1'd1 : 1'd0;

//----------------------------//
assign DRAM_CSn  = 1'd0;
assign DRAM_WEn =  (cs == Write_col_addr)? WSTRB:(cs == precharge)? 4'b0000 : 4'b1111;
assign DRAM_RASn = ((cs == Read_Act) || (cs == Write_Act) || (cs == precharge))? 1'd0 : 1'd1;
assign DRAM_CASn = ((cs == Read_col_addr) || (cs == Write_col_addr))? 1'd0 : 1'd1;
assign DRAM_A    = ((cs == Read_Act) || (cs == Write_Act) || (cs == precharge))? A_reg[22:12]:
                   ((cs == Read_col_addr) || (cs == Write_col_addr))? {1'b0,A_reg[11:2]} + Readcnt: 
                   (cs == burst)? ARADDR : 11'd0;
assign DRAM_D    = WDATA_reg;
//----------------------------//

endmodule
