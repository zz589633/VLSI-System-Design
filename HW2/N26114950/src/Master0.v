`include "RISV_def.svh"
`include "AXI_define.svh"

module Master0(
           input clk,
           input rst_n,
           input hd_stall,
           input flush,
           input[31:0]A,
           input[2:0]M1_cs,
           output[2:0]M0_cs,
           output reg[31:0]Inst,
           //READ ADDRESS0
           output reg[`AXI_ID_BITS-1:0] ARID_M0,
           output reg[`AXI_ADDR_BITS-1:0] ARADDR_M0,
           output reg[`AXI_LEN_BITS-1:0] ARLEN_M0,
           output reg[`AXI_SIZE_BITS-1:0] ARSIZE_M0,
           output reg[1:0] ARBURST_M0,
           output reg ARVALID_M0,
           input ARREADY_M0,
           //READ DATA0
           input [`AXI_ID_BITS-1:0] RID_M0,   //no use
           input [`AXI_DATA_BITS-1:0] RDATA_M0,
           input [1:0] RRESP_M0,  //no use
           input RLAST_M0,
           input RVALID_M0,
           output reg RREADY_M0,
           output reg signed[31:0]csr

       );


reg[1:0]cs,ns;

assign M0_cs=cs;

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        cs <= 2'd0;
    end
    else
    begin
        cs <= ns;
    end
end


always@(*)
begin
    case(cs)
        `Initial_M0:
            ns=(M1_cs==3'd0 && ~hd_stall)? `wait_ARReady_M0: `Initial_M0;
        `wait_ARReady_M0:
            ns=(ARREADY_M0 && ARVALID_M0)? `wait_space_M0: `wait_ARReady_M0;
        `wait_Read_data_M0:
            ns=(RREADY_M0 && RVALID_M0 && RLAST_M0)? `Initial_M0: `wait_Read_data_M0;
        `wait_space_M0:
            ns= `wait_Read_data_M0;
    endcase
end

always@(*)
begin
    case(cs)
        `Initial_M0:
        begin
            ARID_M0=4'b0000;
            ARADDR_M0=32'd0;
            ARLEN_M0=4'd0;
            ARSIZE_M0=3'b010;
            ARBURST_M0=2'b01;
            ARVALID_M0=1'd0;
            RREADY_M0=1'd0;
            //Inst=32'd0;
        end
        `wait_ARReady_M0:
        begin
            ARID_M0=4'b0000;
            //ARADDR_M0={16'h0000,A[15:0]};  //0x0000_ffff
            ARADDR_M0=A;
            ARLEN_M0=4'd0;
            ARSIZE_M0=3'b010;
            ARBURST_M0=2'b01;
            ARVALID_M0=1'd1;
            RREADY_M0=1'd0;
            //Inst=32'd0;
        end
        `wait_Read_data_M0:
        begin
            ARID_M0=4'b0000;
            ARADDR_M0=32'd0;
            ARLEN_M0=4'd0;
            ARSIZE_M0=3'b010;
            ARBURST_M0=2'b01;
            ARVALID_M0=1'd0;
            RREADY_M0=1'd1;
            //Inst = (RREADY_M0&&RVALID_M0)?RDATA_M0:32'd0;
        end
        `wait_space_M0:
        begin
            ARID_M0=4'b0000;
            ARADDR_M0=32'd0;
            ARLEN_M0=4'd0;
            ARSIZE_M0=3'b010;
            ARBURST_M0=2'b01;
            ARVALID_M0=1'd0;
            RREADY_M0=1'd0;
            //Inst=32'd0;
        end
    endcase
end


always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        Inst <= 32'd0;
        csr <= -1;
    end
    else if(flush && cs == `wait_Read_data_M0)
    begin
        Inst <= 32'd0;
        csr <= csr;
    end
    else if(RREADY_M0 && RVALID_M0 && cs == `wait_Read_data_M0)
    begin
        Inst <= RDATA_M0;
        csr <= csr+32'd1;
    end
    else
    begin
        Inst <= Inst;
        csr <= csr;
    end
end


endmodule
