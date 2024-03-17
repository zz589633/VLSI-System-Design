`include "AXI_define.svh"
`include "RISV_def.svh"

module SRAM_wrapper (
           input clk,
           input rst_n,

           //WRITE ADDRESS
           input [`AXI_IDS_BITS-1:0] AWID,
           input [`AXI_ADDR_BITS-1:0] AWADDR,
           input [`AXI_LEN_BITS-1:0] AWLEN,
           input [`AXI_SIZE_BITS-1:0] AWSIZE,
           input [1:0] AWBURST,
           input AWVALID,
           output reg AWREADY,
           //WRITE DATA
           input [`AXI_DATA_BITS-1:0] WDATA,
           input [`AXI_STRB_BITS-1:0] WSTRB,
           input WLAST,
           input WVALID,
           output reg WREADY,
           //WRITE RESPONSE
           output reg [`AXI_IDS_BITS-1:0] BID,
           output reg [1:0] BRESP,
           output reg BVALID,
           input BREADY,

           //READ ADDRESS
           input [`AXI_IDS_BITS-1:0] ARID,
           input [`AXI_ADDR_BITS-1:0] ARADDR,
           input [`AXI_LEN_BITS-1:0] ARLEN,
           input [`AXI_SIZE_BITS-1:0] ARSIZE,
           input [1:0] ARBURST,
           input ARVALID,
           output reg ARREADY,
           //READ DATA
           output reg [`AXI_IDS_BITS-1:0] RID,
           output reg [`AXI_DATA_BITS-1:0] RDATA,
           output reg [1:0] RRESP,
           output reg RLAST,
           output reg RVALID,
           input RREADY
       );

reg[31:0]AWID_reg,ARID_reg,ARADDR_reg;
reg[3:0]count;
reg[13:0]A;
reg[31:0]DO,DI;
reg[3:0]WEB;
reg[2:0]cs,ns;
reg[3:0]ARLEN_reg;

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        cs <= 3'd0;
    end
    else
    begin
        cs <= ns;
    end
end

always@(*)
begin
    case(cs)
        `Initial_S:
            ns = (AWVALID)? `Write_addr_S:(ARVALID)? `Read_addr_S: `Initial_S;
        `Read_addr_S:
            ns = (ARVALID && ARREADY)? `sent_Read_data_S: `Read_addr_S;
        `sent_Read_data_S:
            ns =  (RVALID && RREADY && RLAST)? `Initial_S:`sent_Read_data_S;
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
            A=32'dx;
            DI=32'd0;
            WEB=4'b1111;
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
            A=ARADDR[15:2];
            DI=32'd0;
            WEB=4'b1111;
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
            RDATA=DO;
            RRESP=2'b00;
            RLAST=(count == ARLEN_reg)&& RVALID; 
            RVALID=1'd1;
            //SRAM input
            A=ARADDR_reg[15:2];
            DI=32'd0;
            WEB=4'b1111;
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
            A=AWADDR[15:2];
            DI=32'd0;
            WEB=4'b1111;
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
            A=AWADDR[15:2];
            DI=WDATA;
            WEB=~WSTRB;
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
            A=32'd0;
            DI=32'd0;
            WEB=4'b1111;
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
            A=32'd0;
            DI=32'd0;
            WEB=4'b1111;
        end
    endcase
end


always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        count <= 4'd0;
    end
    else if(cs == `Initial_S)
    begin
        count <= 4'd0;
    end
    else if(cs == `sent_Read_data_S)
    begin
        count <= (RVALID && RREADY)? count+4'd1 : count;
    end
    else
        count <= 4'd0;
end


always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
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

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
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

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        ARADDR_reg <= 32'd0;
    end
    else if(cs == `Read_addr_S && ARREADY && ARVALID)
    begin
        ARADDR_reg <= ARADDR;
    end
    else
    begin
        ARADDR_reg <= ARADDR_reg;
    end
end

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
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

SRAM i_SRAM (
         .A0   (A[0]  ),
         .A1   (A[1]  ),
         .A2   (A[2]  ),
         .A3   (A[3]  ),
         .A4   (A[4]  ),
         .A5   (A[5]  ),
         .A6   (A[6]  ),
         .A7   (A[7]  ),
         .A8   (A[8]  ),
         .A9   (A[9]  ),
         .A10  (A[10] ),
         .A11  (A[11] ),
         .A12  (A[12] ),
         .A13  (A[13] ),
         .DO0  (DO[0] ),
         .DO1  (DO[1] ),
         .DO2  (DO[2] ),
         .DO3  (DO[3] ),
         .DO4  (DO[4] ),
         .DO5  (DO[5] ),
         .DO6  (DO[6] ),
         .DO7  (DO[7] ),
         .DO8  (DO[8] ),
         .DO9  (DO[9] ),
         .DO10 (DO[10]),
         .DO11 (DO[11]),
         .DO12 (DO[12]),
         .DO13 (DO[13]),
         .DO14 (DO[14]),
         .DO15 (DO[15]),
         .DO16 (DO[16]),
         .DO17 (DO[17]),
         .DO18 (DO[18]),
         .DO19 (DO[19]),
         .DO20 (DO[20]),
         .DO21 (DO[21]),
         .DO22 (DO[22]),
         .DO23 (DO[23]),
         .DO24 (DO[24]),
         .DO25 (DO[25]),
         .DO26 (DO[26]),
         .DO27 (DO[27]),
         .DO28 (DO[28]),
         .DO29 (DO[29]),
         .DO30 (DO[30]),
         .DO31 (DO[31]),
         .DI0  (DI[0] ),
         .DI1  (DI[1] ),
         .DI2  (DI[2] ),
         .DI3  (DI[3] ),
         .DI4  (DI[4] ),
         .DI5  (DI[5] ),
         .DI6  (DI[6] ),
         .DI7  (DI[7] ),
         .DI8  (DI[8] ),
         .DI9  (DI[9] ),
         .DI10 (DI[10]),
         .DI11 (DI[11]),
         .DI12 (DI[12]),
         .DI13 (DI[13]),
         .DI14 (DI[14]),
         .DI15 (DI[15]),
         .DI16 (DI[16]),
         .DI17 (DI[17]),
         .DI18 (DI[18]),
         .DI19 (DI[19]),
         .DI20 (DI[20]),
         .DI21 (DI[21]),
         .DI22 (DI[22]),
         .DI23 (DI[23]),
         .DI24 (DI[24]),
         .DI25 (DI[25]),
         .DI26 (DI[26]),
         .DI27 (DI[27]),
         .DI28 (DI[28]),
         .DI29 (DI[29]),
         .DI30 (DI[30]),
         .DI31 (DI[31]),
         .CK   (clk   ),
         .WEB0 (WEB[0]),
         .WEB1 (WEB[1]),
         .WEB2 (WEB[2]),
         .WEB3 (WEB[3]),
         .OE   (1'b1  ),
         .CS   (1'b1   )
     );

endmodule
