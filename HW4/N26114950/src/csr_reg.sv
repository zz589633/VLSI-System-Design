module csr_reg(
    input        clk,
    input        rst,
    input  	 stall_wrap,
    input [11:0] rs_addr,
    input [11:0] rd_addr,
    input        reg_wr_en,
    input [31:0] reg_in,
    input [31:0] pc,
    input        ir_sc_taken,
    input        ir_wdt_taken,
    input        MRET,
    output logic [31:0] csr_src,
    output logic        MIE,
    output logic        MEIE,
    output logic        MTIE,
    output logic [31:0] mtvec_pc,
    output logic [31:0] mepc_pc
    );
    
//reg_memory[0]: mstatus 300
//reg_memory[1]: mie 304
//reg_memory[2]: mtvec 305
//reg_memory[3]: mepc 341
//reg_memory[4]: mip 344
//reg_memory[5]: mcycle B00
//reg_memory[6]: minstret B02
//reg_memory[7]: mcycleh B80
//reg_memory[8]: minstreth B82

logic [31:0] reg_memory [8:0];



//reg_memory[0]: mstatus 300
always@(posedge clk)
if(rst)
    reg_memory[0] <= 32'd0;
else if(stall_wrap)
    reg_memory[0] <= reg_memory[0];
else if(ir_sc_taken)
    begin
        reg_memory[0][12:11] <= 2'b11; //mstatus MPP
        reg_memory[0][7] <= reg_memory[0][3]; //mstatus MPIE
        reg_memory[0][3] <= 1'b0; //mstatus MIE
    end
else if(ir_wdt_taken)
    begin
        reg_memory[0][12:11] <= 2'b11; //mstatus MPP
        reg_memory[0][7] <= reg_memory[0][3]; //mstatus MPIE
        reg_memory[0][3] <= 1'b0; //mstatus MIE
    end
else if(MRET)
    begin
        reg_memory[0][12:11] <= 2'b11; //mstatus MPP
        reg_memory[0][7] <= 1'b1; //mstatus MPIE
        reg_memory[0][3] <= reg_memory[0][7]; //mstatus MIE
    end
else if(reg_wr_en && rd_addr == 12'h300)
    begin 
        reg_memory[0][12:11] <= reg_in[12:11];
        reg_memory[0][7] <= reg_in[7];
        reg_memory[0][3] <= reg_in[3];
    end
else
    reg_memory[0] <= reg_memory[0];

//reg_memory[1]: mie 304
always@(posedge clk)
if(rst)
    reg_memory[1] <= 32'd0;
else if(stall_wrap)
    reg_memory[1] <= reg_memory[1];
else if(reg_wr_en && rd_addr == 12'h304)
    begin 
        reg_memory[1][11] <= reg_in[11];
        reg_memory[1][7] <= reg_in[7];
    end
else
    reg_memory[1] <= reg_memory[1];

//reg_memory[2]: mtvec 305
always@(posedge clk)
if(rst)
    reg_memory[2] <=  32'h0001_0000;
else
    reg_memory[2] <= reg_memory[2];

//reg_memory[3]: mepc 341
always@(posedge clk)
if(rst)
    reg_memory[3] <= 32'd0;
else if(stall_wrap)
    reg_memory[3] <= reg_memory[3];
else if(ir_sc_taken)
    reg_memory[3] <= pc; //mepc
else if(ir_wdt_taken)
    reg_memory[3] <= pc; //mepc
else if(reg_wr_en && rd_addr == 12'h341)
    reg_memory[3][31:2] <= reg_in[31:2];
else
    reg_memory[3] <= reg_memory[3];

//reg_memory[4]: mip 344
always@(posedge clk)
if(rst)
    reg_memory[4] <= 32'd0;
else if(stall_wrap)
    reg_memory[4] <= reg_memory[4];
else if(ir_sc_taken)
    reg_memory[4][11] <= 1'b1; //mip MEIP
else if(ir_wdt_taken)
    reg_memory[4][7] <= 1'b1; //mip MTIPW
else if(MRET)
    reg_memory[4][11] <= 1'b0; //mip MEIP
else
    reg_memory[4] <= reg_memory[4];

//reg_memory[5]: mcycle B00
always@(posedge clk)
if(rst)
    reg_memory[5] <= 32'd0;
else if(stall_wrap)
    reg_memory[5] <= reg_memory[5];
else if(reg_wr_en && rd_addr == 12'hB00)
    reg_memory[5] <= reg_in;
else
    reg_memory[5] <= reg_memory[5];

//reg_memory[6]: minstret B02
always@(posedge clk)
if(rst)
    reg_memory[6] <= 32'd0;
else if(stall_wrap)
    reg_memory[6] <= reg_memory[6];
else if(reg_wr_en && rd_addr == 12'hB02)
    reg_memory[6] <= reg_in;
else
    reg_memory[6] <= reg_memory[6];

//reg_memory[7]: mcycleh B80
always@(posedge clk)
if(rst)
    reg_memory[7] <= 32'd0;
else if(stall_wrap)
    reg_memory[7] <= reg_memory[7];
else if(reg_wr_en && rd_addr == 12'hB80)
    reg_memory[7] <= reg_in;
else
    reg_memory[7] <= reg_memory[7];

//reg_memory[8]: minstreth B82
always@(posedge clk)
if(rst)
    reg_memory[8] <= 32'd0;
else if(stall_wrap)
    reg_memory[8] <= reg_memory[8];
else if(reg_wr_en && rd_addr == 12'hB82)
    reg_memory[8] <= reg_in;
else
    reg_memory[8] <= reg_memory[8];


always_comb begin 
    case (rs_addr)
        12'h300: csr_src = reg_memory[0]; //mstatus
        12'h304: csr_src = reg_memory[1]; //mie
        12'h305: csr_src = reg_memory[2]; //mtvec
        12'h341: csr_src = reg_memory[3]; //mepc
        12'h344: csr_src = reg_memory[4]; //mip
        12'hB00: csr_src = reg_memory[5]; //mcycle
        12'hB02: csr_src = reg_memory[6]; //minstret
        12'hB80: csr_src = reg_memory[7]; //mcycleh
        12'hB82: csr_src = reg_memory[8]; //minstreth
        default: csr_src = 32'd0;
    endcase
end

assign MIE = reg_memory[0][3];
assign MEIE = reg_memory[1][11]; //mie MEIE
assign MTIE = reg_memory[1][7]; //mie MTIE
assign mtvec_pc = {reg_memory[2][31:2], 2'b00};
assign mepc_pc = {reg_memory[3][31:2], 2'b00};
    


endmodule
