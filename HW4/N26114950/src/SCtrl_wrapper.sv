`include "AXI_define.svh"
`include "RISV_def.svh"


module SCtrl_wrapper(
    input                             clk,
    input                             rst,
    output logic                      sctrl_en,
    output logic                      sctrl_clear,
    output logic [5:0]                sctrl_addr,
    input                             sctrl_interrupt,
    input [`AXI_DATA_BITS-1:0]        sctrl_out,
    output logic                      cpu_interrupt,
    
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
    input                            BREADY
    );

reg[31:0]AWID_reg,ARID_reg,ARADDR_reg;
reg[5:0]count;

reg[2:0]cs,ns;
reg[3:0]ARLEN_reg;
    

assign cpu_interrupt = sctrl_interrupt;


always@(posedge clk)
begin
    if(rst)
        sctrl_en <= 1'd0;
    else if(AWADDR == 32'h1000_0100 && WVALID && WREADY)
        sctrl_en <= (WDATA == 32'd0)? 1'd0 : 1'd1;
    else
        sctrl_en <= sctrl_en;
end

always@(posedge clk)
begin
    if(rst)
        sctrl_clear <= 1'd0;
    else if(AWADDR == 32'h1000_0200 && WVALID && WREADY)
        sctrl_clear <= (WDATA == 32'd0)? 1'd0 : 1'd1;
    else
        sctrl_clear <= sctrl_clear;
end


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
            //SRAM input
            sctrl_addr=6'd0;

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
            //SRAM input
            sctrl_addr=6'd0;

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
            RDATA=sctrl_out;
            RRESP=2'b00;
           // RLAST=(count == ARLEN_reg)&& RVALID;
            RLAST = 1'd1; 
            RVALID=1'd1;
            //SRAM input
            //sctrl_addr=ARADDR_reg[7:2]+count;
            sctrl_addr = count;

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
            //SRAM input
            sctrl_addr=AWADDR[7:2];

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
            //SRAM input
            sctrl_addr=AWADDR[7:2];

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
            //SRAM input
            sctrl_addr=6'd0;

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
            //SRAM input
            sctrl_addr=6'd0;

        end
    endcase
end


always@(posedge clk)
begin
    if(rst)
    begin
        count <= 6'd0;
    end
    else if(cs == `sent_Read_data_S && RVALID && RREADY && RLAST)
    begin
        count <= count+6'd1;
    end
    else
        count <= count;
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
