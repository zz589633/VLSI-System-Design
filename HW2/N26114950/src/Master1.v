`include "RISV_def.svh"
`include "AXI_define.svh"

module Master1
       (
           input clk,
           input rst_n,
           input hd_stall,
           input [31:0]A,
           input [31:0]DM1_DI,
           output reg[31:0]DM1_DO,
           input MemRead,
           input MemWrite,
           input[2:0]M0_cs,
           output[2:0]M1_cs,
           input [3:0]WEB,
           //WRITE ADDRESS
           output reg[`AXI_ID_BITS-1:0] AWID_M1,
           output reg[`AXI_ADDR_BITS-1:0] AWADDR_M1,
           output reg[`AXI_LEN_BITS-1:0] AWLEN_M1,
           output reg[`AXI_SIZE_BITS-1:0] AWSIZE_M1,
           output reg[1:0] AWBURST_M1,
           output reg AWVALID_M1,
           input  AWREADY_M1,
           //WRITE DATA
           output reg [`AXI_DATA_BITS-1:0] WDATA_M1,
           output reg [`AXI_STRB_BITS-1:0] WSTRB_M1,
           output reg WLAST_M1,
           output reg WVALID_M1,
           input  WREADY_M1,
           //WRITE RESPONSE
           input  [`AXI_ID_BITS-1:0] BID_M1,
           input  [1:0] BRESP_M1,
           input  BVALID_M1,
           output reg BREADY_M1,
           //READ ADDRESS1
           output reg [`AXI_ID_BITS-1:0] ARID_M1,
           output reg [`AXI_ADDR_BITS-1:0] ARADDR_M1,
           output reg [`AXI_LEN_BITS-1:0] ARLEN_M1,
           output reg [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
           output reg [1:0] ARBURST_M1,
           output reg ARVALID_M1,
           input  ARREADY_M1,
           //READ DATA1
           input  [`AXI_ID_BITS-1:0] RID_M1,
           input  [`AXI_DATA_BITS-1:0] RDATA_M1,
           input  [1:0] RRESP_M1,
           input  RLAST_M1,
           input  RVALID_M1,
           output reg RREADY_M1
       );

reg[31:0]DM1_DI_reg;
reg[31:0]A_reg;
reg[2:0] cs,ns;
reg[3:0]WEB_reg;
assign M1_cs=cs;

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
        `Initial_M1:
            ns=(M0_cs==3'd0 && MemRead )? `wait_ARReady_M1:(M0_cs==3'd0 && MemWrite )? `wait_AWReady_M1: `Initial_M1;
        `wait_ARReady_M1:
            ns=(ARREADY_M1 && ARVALID_M1)? `wait_space_R_M1: `wait_ARReady_M1;
        `wait_space_R_M1:
            ns= `wait_Read_data_M1;
        `wait_Read_data_M1:
            ns=(RREADY_M1 && RVALID_M1 && RLAST_M1)? `Initial_M1: `wait_Read_data_M1;
        `wait_AWReady_M1:
            ns=(AWREADY_M1 && AWVALID_M1)? `wait_Write_data_M1: `wait_AWReady_M1;
        `wait_Write_data_M1:
            ns=(WREADY_M1 && WVALID_M1 && WLAST_M1)? `wait_space_B_M1: `wait_Write_data_M1;
        `wait_space_B_M1:
            ns= `wait_BValid_M1;
        `wait_BValid_M1:
            ns=(BREADY_M1 && BVALID_M1)? `Initial_M1: `wait_BValid_M1;

    endcase
end


always@(*)
begin
    case(cs)
        `Initial_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            //DM1_DO=32'd0;
        end
        `wait_ARReady_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            //ARADDR_M1={16'h0001,A[15:0]};
            ARADDR_M1=A_reg;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd1;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            //DM1_DO=32'd0;
        end

        `wait_space_R_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            //DM1_DO=32'd0;
        end
        `wait_Read_data_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd1;
            //Resp
            BREADY_M1=1'd0;
            //DM
            // DM1_DO = (RREADY_M1 && RVALID_M1)? RDATA_M1: 32'd0;
        end
        `wait_AWReady_M1:
        begin
            //write
            AWID_M1=4'b0000;
            //AWADDR_M1={16'h0001,A[15:0]};
            AWADDR_M1=A_reg;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd1;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            //DM1_DO=32'd0;
        end
        `wait_Write_data_M1:
        begin
            //write
            AWID_M1=4'b0000;
            //AWADDR_M1={16'h0001,A[15:0]};
            AWADDR_M1=A_reg;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=DM1_DI_reg;
            WSTRB_M1=~WEB_reg;
            WLAST_M1=1'd1;
            WVALID_M1=1'd1;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            //DM1_DO=32'd0;
        end
        `wait_space_B_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd0;
            //DM
            // DM1_DO=32'd0;
        end
        `wait_BValid_M1:
        begin
            //write
            AWID_M1=4'b0000;
            AWADDR_M1=32'd0;
            AWLEN_M1=4'd0;
            AWSIZE_M1=3'b010;
            AWBURST_M1=2'b01;
            AWVALID_M1=1'd0;
            WDATA_M1=32'd0;
            WSTRB_M1=4'd0;
            WLAST_M1=1'd0;
            WVALID_M1=1'd0;

            //read
            ARID_M1=4'b0000;
            ARADDR_M1=32'd0;
            ARLEN_M1=4'd0;
            ARSIZE_M1=3'b010;
            ARBURST_M1=2'b01;
            ARVALID_M1=1'd0;
            RREADY_M1=1'd0;
            //Resp
            BREADY_M1=1'd1;
            //DM
            //DM1_DO=32'd0;
        end

    endcase
end



always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        DM1_DI_reg <= 32'd0;
        A_reg <= 32'd0;
        WEB_reg <= 4'b1111;
    end
    else if(cs==`Initial_M1)
    begin
        DM1_DI_reg <= DM1_DI;
        A_reg <= A;
        WEB_reg <= WEB;
    end
    else
    begin
        DM1_DI_reg <= DM1_DI_reg;
        A_reg <= A_reg;
        WEB_reg <= WEB_reg;
    end
end

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        DM1_DO <= 32'd0;
    end
    else if(RREADY_M1 && RVALID_M1 && cs==`wait_Read_data_M1)
    begin
        DM1_DO <= RDATA_M1;
    end
    else
    begin
        DM1_DO <= DM1_DO;
    end
end

endmodule
