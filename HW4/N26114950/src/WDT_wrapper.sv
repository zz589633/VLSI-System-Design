`include "RISV_def.svh"
`include "AXI_define.svh"
`include "WDT.sv"
`include "load_sync.sv"
`include "sync_pulse.sv"

module WDT_wrapper(
    input                             clk,
    input                             clk2,
    input                             rst,
    input                             rst2,
        //READ ADDRESS
    input [`AXI_IDS_BITS-1:0]         ARID,
    input [`AXI_ADDR_BITS-1:0]        ARADDR,
    input [`AXI_LEN_BITS-1:0]         ARLEN,
    input [`AXI_SIZE_BITS-1:0]        ARSIZE,
    input [1:0]                       ARBURST,
    input                             ARVALID,
    output logic                      ARREADY,
    //READ DATA
    output logic [`AXI_IDS_BITS-1:0]  RID,
    output logic [`AXI_DATA_BITS-1:0] RDATA,
    output logic [1:0]                RRESP,
    output logic                      RLAST,
    output logic                      RVALID,
    input                             RREADY,
    
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
    input                            BREADY,

    output logic 		             WTO
);


reg[31:0]AWID_reg,ARID_reg,ARADDR_reg;

reg[2:0]cs,ns;
reg[3:0]ARLEN_reg;
logic[31:0] WDEN_clk,WDLIVE_clk,WTOCNT_clk;
logic WDEN_load_clk,WDLIVE_load_clk,WTOCNT_load_clk;
logic[31:0] WDEN_Data_out,WDLIVE_Data_out;
wire WDEN_full,WDLIVE_full,WTOCNT_full;
wire WDEN_empty,WDLIVE_empty,WTOCNT_empty;
logic WDEN,WDLIVE;
logic[31:0]WTOCNT;
logic WTOCNT_wready,WDEN_wready,WDLIVE_wready;

//-----------------------------------------------------------
always@(posedge clk)
if(rst)
    WDEN_clk <= 32'd0;
else if(AWADDR == 32'h1001_0100 && WVALID && WREADY)
    WDEN_clk <= WDATA;
else
    WDEN_clk <= WDEN_clk;  //level signal

// 2flop
reg q1_clk2,q2_clk2;
always@(posedge clk2)
if(rst2)
    {q2_clk2,q1_clk2} <= 0;
else
    {q2_clk2,q1_clk2} <= {q1_clk2,WDEN_clk[0]};
    
assign WDEN = q2_clk2;

//-----------------------------------------------------------
// always@(posedge clk)
// if(rst)
//     WDEN_load_clk <= 1'd0;
// else if(AWADDR == 32'h1001_0100 && WVALID && WREADY && WDEN_wready)
//     WDEN_load_clk <= 1'd1;
// else
//     WDEN_load_clk <= 1'd0;

// load_sync #(
//     .DATASIZE(32)
// )
// load_sync_WDEN(
//     .clk(clk),
//     .rst(rst),
//     .clk2(clk2),
//     .rst2(rst2),
//     .Data_in(WDEN_clk),
//     .load_en(WDEN_load_clk),
//     .Data_out(WDEN_Data_out),
//     .wready(WDEN_wready)
// );
// assign WDEN = |WDEN_Data_out;
//-----------------------------------------------------------



//-----------------------------------------------------------

always@(posedge clk)
if(rst)
    WDLIVE_clk <= 32'd0;
else if(AWADDR == 32'h1001_0200 && WVALID && WREADY)
    WDLIVE_clk <= WDATA;
else
    WDLIVE_clk <= 0;   // pulse signal 



sync_pulse sync_pulse_WDLIVE(
    .clk(clk),
    .rst(rst),
    .clk2(clk2),
    .rst2(rst2),
    .Data_in(WDLIVE_clk[0]),
    .Data_out(WDLIVE) 
 );
     

//--------------------------------------------------------------
// always@(posedge clk)
// if(rst)
//     WDLIVE_load_clk <= 1'd0;
// else if(AWADDR == 32'h1001_0200 && WVALID && WREADY && WDLIVE_wready)
//     WDLIVE_load_clk <= 1'd1;
// else
//     WDLIVE_load_clk <= 1'd0;

// load_sync #(
//     .DATASIZE(32)
// )
// load_sync_WDLIVE(
//     .clk(clk),
//     .rst(rst),
//     .clk2(clk2),
//     .rst2(rst2),
//     .Data_in(WDLIVE_clk),
//     .load_en(WDLIVE_load_clk),
//     .Data_out(WDLIVE_Data_out),
//     .wready(WDLIVE_wready)
// );
// assign WDLIVE = |WDLIVE_Data_out;


//-----------------------------------------------------------

always@(posedge clk)
if(rst)
    WTOCNT_clk <= 32'd0;
else if(AWADDR == 32'h1001_0300 && WVALID && WREADY)
    WTOCNT_clk <= WDATA;
else
    WTOCNT_clk <= WTOCNT_clk;


always@(posedge clk)
if(rst)
    WTOCNT_load_clk <= 1'd0;
else if(AWADDR == 32'h1001_0300 && WVALID && WREADY && WTOCNT_wready) 
    WTOCNT_load_clk <= 1'd1;
else
    WTOCNT_load_clk <= 1'd0;

load_sync #(
    .DATASIZE(32)
)
load_sync_WTOCNT(
    .clk(clk),
    .rst(rst),
    .clk2(clk2),
    .rst2(rst2),
    .Data_in(WTOCNT_clk),
    .load_en(WTOCNT_load_clk),
    .Data_out(WTOCNT),
    .wready(WTOCNT_wready)
);
//-----------------------------------------------------------
WDT WDT(
  .clk(clk),
  .rst(rst),
  .clk2(clk2),
  .rst2(rst2),
  .WDEN(WDEN),
  .WDLIVE(WDLIVE),
  .WTOCNT(WTOCNT),
  .WTO(WTO)
);
//-----------------------------------------------------------

always@(posedge clk)
begin
    if(rst)
        cs <= 3'd0;
    else 
        cs <= ns; 
end

always@(*)
begin
    case(cs)
        `Initial_S:
            ns = (AWVALID)? `Write_addr_S:(ARVALID)? `Read_addr_S: `Initial_S;
        `Read_addr_S:
            ns = (ARVALID && ARREADY)? `sent_Read_data_S: `Read_addr_S;
        `sent_Read_data_S:
            ns = (RVALID && RREADY && RLAST)? `Initial_S:`sent_Read_data_S;
        `Write_addr_S:
            ns = (AWVALID && AWREADY)? `Write_data_S: `Write_addr_S;
        `Write_data_S:
            ns = (WVALID && WREADY && WLAST)? `BResp_S: `Write_data_S;
        `BResp_S:
            ns = (BVALID && BREADY)? `Initial_S: `BResp_S;
        default:
            ns = 3'd0;
    endcase
end

always@(*)
begin
    case(cs)
        `Initial_S:
        begin
            //write
            AWREADY=1'd0;
            WREADY=1'd0;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd0;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
        `Read_addr_S:
        begin
            //write
            AWREADY=1'd0;
            WREADY=1'd0;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd1;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
        `sent_Read_data_S:
        begin
            //write
            AWREADY=1'd0;
            WREADY=1'd0;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd0;
            RID=ARID_reg;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST = 1'd1; 
            RVALID=1'd1;
        end
        `Write_addr_S:
        begin
            //write
            AWREADY=1'd1;
            WREADY=1'd0;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd0;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
        `Write_data_S:
        begin
            //write
            AWREADY=1'd1;  //for AW W state in axi is in the same state 
            WREADY=1'd1;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd0;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
        `BResp_S:
        begin
            //write
            AWREADY=1'd0;
            WREADY=1'd0;
            //resp
            BID=AWID_reg;
            BRESP=2'b00;
            BVALID=1'd1;
            //read
            ARREADY=1'd0;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
        default:
        begin
            //write
            AWREADY=1'd0;
            WREADY=1'd0;
            //resp
            BID=8'd0;
            BRESP=2'b00;
            BVALID=1'd0;
            //read
            ARREADY=1'd0;
            RID=8'd0;
            RDATA=32'd0;
            RRESP=2'b00;
            RLAST=1'd0;
            RVALID=1'd0;
        end
    endcase
end

always@(posedge clk)
begin
    if(rst)
    begin
        ARID_reg <= 32'd0;
    end
    else if(cs == `Read_addr_S && ARREADY && ARVALID)
    begin
        ARID_reg <= ARID;
    end
    else
    begin
        ARID_reg <= ARID_reg;
    end
end

always@(posedge clk)
begin
    if(rst)
    begin
        AWID_reg <= 32'd0;
    end
    else if(cs == `Write_addr_S)
    begin
        AWID_reg <= AWID;
    end
    else
    begin
        AWID_reg <= AWID_reg;
    end
end

always@(posedge clk)
begin
    if(rst)
    begin
        ARADDR_reg <= 32'd0;
    end
    else if(cs == `Read_addr_S && ARREADY && ARVALID)
    begin
        ARADDR_reg <= ARADDR+32'd4;
    end
    else
    begin
        ARADDR_reg <= ARADDR_reg;
    end
end

always@(posedge clk)
begin
    if(rst)
    begin
        ARLEN_reg <= 32'd0;
    end
    else if(cs == `Read_addr_S && ARREADY && ARVALID)
    begin
        ARLEN_reg <= ARLEN;
    end
    else
    begin
        ARLEN_reg <= ARLEN_reg;
    end
end

endmodule

