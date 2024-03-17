`include "AXI/AXI_define.svh"

module ROM_wrapper(
           input                             clk,
           input                             rst_n,
           input  [31:0]                     ROM_out,    //ROM(DO)
           output logic                      ROM_read,   //ROM(CS)
           output logic                      ROM_enable, //ROM(OE)
           output logic [13:0]               ROM_address,//ROM(A)
           //READ ADDRESS
           input  [`AXI_IDS_BITS-1:0]        ARID,
           input  [`AXI_ADDR_BITS-1:0]       ARADDR,
           input  [`AXI_LEN_BITS-1:0]        ARLEN,
           input  [`AXI_SIZE_BITS-1:0]       ARSIZE,
           input  [1:0]                      ARBURST,
           input                             ARVALID,
           output logic                      ARREADY,
           //READ DATA
           output logic [`AXI_IDS_BITS-1:0]  RID,
           output logic [`AXI_DATA_BITS-1:0] RDATA,
           output logic [1:0]                RRESP,
           output logic                      RLAST,
           output logic                      RVALID,
           input RREADY
       );

parameter Initial = 2'd0;
parameter Read_addr = 2'd1;
parameter sent_Read_data = 2'd2;

reg[31:0]ARID_reg,ARADDR_reg;
reg[3:0]count;
reg[1:0]cs,ns;
reg[3:0]ARLEN_reg;

assign ROM_read = 1'd1;
assign ROM_enable = 1'd1;

assign RDATA = ROM_out;


always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        cs <= 2'd0;
    else
        cs <= ns;
end

always@(*)
begin
    case(cs)
        Initial:
            ns = (ARVALID)? Read_addr : Initial;
        Read_addr:
            ns = (ARVALID && ARREADY)? sent_Read_data : Read_addr;
        sent_Read_data:
            ns = (RVALID && RREADY && RLAST)? Initial : sent_Read_data;
        default:
            ns = Initial;
    endcase
end


always@(*)
begin
    case(cs)
        Initial:
        begin
            //read
            ARREADY = 1'd0;
            RID = 8'd0;
            RRESP = 2'b00;
            RLAST = 1'd0;
            RVALID = 1'd0;
            //ROM input
            ROM_address = 32'd0;
        end
        Read_addr:
        begin
            //read
            ARREADY = 1'd1;
            RID = 8'd0;
            RRESP = 2'b00;
            RLAST = 1'd0;
            RVALID = 1'd0;
            //ROM input
            ROM_address = ARADDR[15:2];
        end
        sent_Read_data:
        begin
            //read
            ARREADY = 1'd0;
            RID = ARID_reg;
            RRESP = 2'b00;
            RLAST = (count == ARLEN_reg) && RVALID;
            RVALID = 1'd1;
            //ROM input
            ROM_address = ARADDR_reg[15:2] + count;
        end
        default:
        begin
            //read
            ARREADY = 1'd0;
            RID = 8'd0;
            RRESP = 2'b00;
            RLAST = 1'd0;
            RVALID = 1'd0;
            //ROM input
            ROM_address = 32'd0;
        end
    endcase
end


always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        count <= 4'd0;
    else if(cs == sent_Read_data && RLAST)
        count <= 4'd0;
    else if(cs == sent_Read_data)
        count <= count+4'd1;
    else
        count <= 4'd0;
end

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        ARID_reg <= 32'd0;
    else if(cs == Read_addr && ARREADY && ARVALID)
        ARID_reg <= ARID;
    else
        ARID_reg <= ARID_reg;
end

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        ARADDR_reg <= 32'd0;
    else if(cs == Read_addr && ARREADY && ARVALID)
        ARADDR_reg <= ARADDR + 32'd4;
    else
        ARADDR_reg <= ARADDR_reg;
end

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        ARLEN_reg <= 32'd0;
    else if(cs == Read_addr && ARREADY && ARVALID)
        ARLEN_reg <= ARLEN;
    else
        ARLEN_reg <= ARLEN_reg;
end



endmodule
