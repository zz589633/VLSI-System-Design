`include "RISV_def.svh"
`include "AXI/AXI_define.svh"
`include "CPU.sv"
`include "L1C_inst.sv"
`include "L1C_data.sv"
module CPU_wrapper
       (
           input                            clk,
           input                            rst_n,
           //SLAVE INTERFACE FOR MASTERS
           //WRITE ADDRESS
           output logic[`AXI_ID_BITS-1:0]   AWID_M1,
           output logic[`AXI_ADDR_BITS-1:0] AWADDR_M1,
           output logic[`AXI_LEN_BITS-1:0]  AWLEN_M1,
           output logic[`AXI_SIZE_BITS-1:0] AWSIZE_M1,
           output logic[1:0]                AWBURST_M1,
           output                           AWVALID_M1,
           input                            AWREADY_M1,
           //WRITE DATA
           output logic[`AXI_DATA_BITS-1:0] WDATA_M1,
           output logic[`AXI_STRB_BITS-1:0] WSTRB_M1,
           output logic                     WLAST_M1,
           output logic                     WVALID_M1,
           input                            WREADY_M1,
           //WRITE RESPONSE
           input [`AXI_ID_BITS-1:0]         BID_M1,
           input [1:0]                      BRESP_M1,
           input                            BVALID_M1,
           output logic                     BREADY_M1,

           //READ ADDRESS0
           output logic[`AXI_ID_BITS-1:0]   ARID_M0,
           output logic[`AXI_ADDR_BITS-1:0] ARADDR_M0,
           output logic[`AXI_LEN_BITS-1:0]  ARLEN_M0,
           output logic[`AXI_SIZE_BITS-1:0] ARSIZE_M0,
           output logic[1:0]                ARBURST_M0,
           output logic                     ARVALID_M0,
           input                            ARREADY_M0,
           //READ DATA0
           input [`AXI_ID_BITS-1:0]         RID_M0,
           input [`AXI_DATA_BITS-1:0]       RDATA_M0,
           input [1:0]                      RRESP_M0,
           input                            RLAST_M0,
           input                            RVALID_M0,
           output logic                     RREADY_M0,
           //READ ADDRESS1
           output logic[`AXI_ID_BITS-1:0]   ARID_M1,
           output logic[`AXI_ADDR_BITS-1:0] ARADDR_M1,
           output logic[`AXI_LEN_BITS-1:0]  ARLEN_M1,
           output logic[`AXI_SIZE_BITS-1:0] ARSIZE_M1,
           output logic[1:0]                ARBURST_M1,
           output logic                     ARVALID_M1,
           input                            ARREADY_M1,
           //READ DATA1
           input [`AXI_ID_BITS-1:0]         RID_M1,
           input [`AXI_DATA_BITS-1:0]       RDATA_M1,
           input [1:0]                      RRESP_M1,
           input                            RLAST_M1,
           input                            RVALID_M1,
           output logic                     RREADY_M1
       );

//CPU signal
logic CPU_MemWrite,CPU_MemRead;
logic [31:0]CPU_PC,IM1_Inst,DM1_data,CPU_ALU_result,CPU_DM1_DI;
logic stall_wrap;
logic [31:0]csr;
logic [31:0]I_core_Inst_reg,D_core_out_reg,I_core_Inst_in;
logic I_core_wait_reg,D_core_wait_reg;
//cache signal
logic I_core_wait,I_write,I_wait,I_req;
logic [2:0]I_type;
logic [31:0]I_core_Inst,I_in,I_addr;
logic D_core_wait,D_core_req,D_core_write,D_wait,D_req,D_write;
logic [2:0]D_type,D_cache_type;
logic [31:0]D_core_out,D_addr,D_in;
logic [31:0]AWADDR_M1_reg,ARADDR_M1_reg,ARADDR_M0_reg;
//state
parameter Idle = 3'd0;
parameter M0_AR = 3'd1;
parameter M0_R = 3'd2;
parameter M1_AR = 3'd3;
parameter M1_R = 3'd4;
parameter M1_AW = 3'd5;
parameter M1_W = 3'd6;
parameter M1_B = 3'd7;

logic[2:0]cs,ns;

always@(posedge clk or negedge rst_n)
if(~rst_n)
    cs <= 3'd0;
else 
    cs <= ns;

always@(*)begin
    case(cs)
        Idle: ns = (I_req)? M0_AR : (D_req && ~D_write)? M1_AR : (D_req && D_write)? M1_AW : Idle;
        M0_AR: ns = (ARREADY_M0 && ARVALID_M0)? M0_R : M0_AR;
        M0_R: ns = ((RREADY_M0 && RVALID_M0 && RLAST_M0)&&(D_req && ~D_write))? M1_AR:
                   ((RREADY_M0 && RVALID_M0 && RLAST_M0)&&(D_req && D_write))? M1_AW:
                   (RREADY_M0 && RVALID_M0 && RLAST_M0)? Idle : M0_R;
        M1_AR: ns = (ARREADY_M1 && ARVALID_M1)? M1_R : M1_AR;
        M1_R: ns = (RREADY_M1 && RVALID_M1 && RLAST_M1)? Idle : M1_R;
        M1_AW: ns = (AWREADY_M1 && AWVALID_M1)? M1_W: M1_AW;
        M1_W: ns = (WREADY_M1 && WVALID_M1 && WLAST_M1)? M1_B : M1_W;
        M1_B: ns = (BREADY_M1 && BVALID_M1)? Idle : M1_B;
    endcase    
end


always_comb begin
    case (D_type)
        `CACHE_BYTE:
        begin
            case (ARADDR_M1[1:0])
                2'b00:  WSTRB_M1 = 4'b1110;
                2'b01:  WSTRB_M1 = 4'b1101;
                2'b10:  WSTRB_M1 = 4'b1011;
                2'b11:  WSTRB_M1 = 4'b0111;
            endcase
        end
        `CACHE_HWORD:
        begin
            case (ARADDR_M1[1:0])
                2'b00:  WSTRB_M1 = 4'b1100;
                2'b10:  WSTRB_M1 = 4'b0011;
			    default:WSTRB_M1 = 4'b0011;
            endcase
        end
        `CACHE_WORD:    WSTRB_M1 = 4'b0000;
        default:        WSTRB_M1 = 4'b1111;
    endcase
end


//M1 signals
assign AWID_M1 = 4'b0000;
assign AWADDR_M1 = AWADDR_M1_reg;
assign AWLEN_M1	= 4'd0;
assign AWSIZE_M1 = 3'b010;
assign AWBURST_M1 = 2'b01;
assign AWVALID_M1 = (cs == M1_AW)? 1'd1 : 1'd0;

assign WDATA_M1 = D_in;
//assign WSTRB_M1 = (cs == M1_W)? 4'b1111 : 4'b0000;	
assign WLAST_M1 = (cs == M1_W)? 1'd1 : 1'd0;
assign WVALID_M1 = (cs == M1_W)? 1'd1 : 1'd0;

assign BREADY_M1 = 1'd1;

assign ARID_M1 = 4'b0000;
assign ARADDR_M1 = ARADDR_M1_reg;
assign ARLEN_M1 = 4'd3;
assign ARSIZE_M1 = 3'b010;
assign ARBURST_M1 = 2'b01;
assign ARVALID_M1 = (cs == M1_AR)? 1'd1 : 1'd0;

assign RREADY_M1 = (cs == M1_R)? 1'd1 : 1'd0;

//M0 signals
assign ARID_M0 = 4'b0000;
assign ARADDR_M0 = ARADDR_M0_reg;
assign ARLEN_M0	= 4'd3;
assign ARSIZE_M0 = 3'b010;
assign ARBURST_M0 = 2'b01;
assign ARVALID_M0 = (cs == M0_AR)? 1'd1 : 1'd0;
assign RREADY_M0 = (cs == M0_R)? 1'd1 : 1'd0;

always@(posedge clk or negedge rst_n)
if(~rst_n)
    AWADDR_M1_reg <= 32'hffff_ffff;
else if(cs == Idle)
    AWADDR_M1_reg <= D_addr;
else
    AWADDR_M1_reg <= AWADDR_M1_reg;

always@(posedge clk or negedge rst_n)
if(~rst_n)
    ARADDR_M1_reg <= 32'd0;
else if(cs == Idle)
    ARADDR_M1_reg <= D_addr;
else
    ARADDR_M1_reg <= ARADDR_M1_reg;

always@(posedge clk or negedge rst_n)
if(~rst_n)
    ARADDR_M0_reg <= 32'hffff_ffff;
else if(cs == Idle)
    ARADDR_M0_reg <= I_addr;
else
    ARADDR_M0_reg <= ARADDR_M0_reg;
/*
always@(posedge clk or negedge rst_n)
if(~rst_n)
    WDATA_M1_reg <= 32'd0;
else if(cs == CPU_MemWrite)
    WDATA_M1_reg <= D_in;
else
    WDATA_M1_reg <= WDATA_M1_reg;
*/

assign I_wait = (RREADY_M0 && RVALID_M0)? 1'd0 : 1'd1;
assign D_wait = ((RREADY_M1 && RVALID_M1)||(BREADY_M1 && BVALID_M1))? 1'd0 : 1'd1;
assign stall_wrap = (I_core_wait==0 && D_core_wait==0)? 1'd0 : 1'd1;

assign D_core_req = (CPU_MemRead||CPU_MemWrite);
assign D_core_write = CPU_MemWrite;

CPU u_CPU
    (
        .clk                (clk),
        .rst                (~rst_n),
        .stall_wrap         (stall_wrap),
        .CPU_IM1_Inst_i     (I_core_Inst),
        .CPU_DM1_DO_i       (D_core_out_reg),
        .CPU_PC_o           (CPU_PC),
        .CPU_MemRead_o      (CPU_MemRead),
        .CPU_MemWrite_o     (CPU_MemWrite),
        .CPU_ALU_result_o   (CPU_ALU_result),
        .CPU_DM1_DI_o       (CPU_DM1_DI),
        .cache_type_o       (D_cache_type)
    );

//for core_addr may change, then core_out may be incorrect  
always@(posedge clk or negedge rst_n)
if(~rst_n)
    D_core_out_reg <= 32'd0;
else 
    D_core_out_reg <= (~stall_wrap) ? D_core_out : D_core_out_reg;


L1C_inst L1CI
(
        //input
        .clk            (clk),
        .rst            (~rst_n),
        .core_addr      (CPU_PC),
        .core_req       (1'd1),
        .core_write     (1'b0),
        .core_in        (32'b0),
        .core_type      (3'b010),  //word type 
        .I_out          (RDATA_M0),
        .I_wait         (I_wait),
        //output        
        .core_out       (I_core_Inst),
        .core_wait      (I_core_wait),
        .I_req          (I_req),
        .I_addr         (I_addr),
        .I_write        (I_write), //no use
        .I_in           (I_in),    //no use
        .I_type         (I_type)   //no use 
);

L1C_data L1CD(
        //input
        .clk            (clk),
        .rst            (~rst_n),
        .core_addr      (CPU_ALU_result),
        .core_req       (D_core_req),
        .core_write     (D_core_write),
        .core_in        (CPU_DM1_DI),
        .core_type      (D_cache_type), 
        .D_out          (RDATA_M1),
        .D_wait         (D_wait),
        //output
        .core_out       (D_core_out),
        .core_wait      (D_core_wait),
        .D_req          (D_req),
        .D_addr         (D_addr),
        .D_write        (D_write),
        .D_in           (D_in),
        .D_type         (D_type)
);


endmodule
