module WDT(
    input           clk,
    input           rst,
    input           clk2,
    input           rst2,
    input           WDEN,
    input           WDLIVE,
    input [31:0]    WTOCNT,
    output logic    WTO
);

logic[31:0]count,WTOCNT_reg;
logic WTO_clk2,WTO_full,WTO_empty,WTO_reg;
logic WDLIVE_reg,WDEN_reg,timeout;

//assign WTO_clk2 = WDEN && timeout;
assign timeout = (count == WTOCNT);

always@(posedge clk2)
if(rst2)
	WTO_clk2 <= 1'd0;
else
	WTO_clk2 <= (WDEN_reg && timeout);


always@(posedge clk2)
if(rst2)
    count <= 32'd0;
else if(~WDEN_reg)
    count <= 32'd0;
else if(WDLIVE_reg)
    count <= 32'd0;
else 
    count <= count + 32'd1;


always@(posedge clk2)
if(rst2)
    WDLIVE_reg <= 1'd0;
else
    WDLIVE_reg <= WDLIVE;

always@(posedge clk2)
if(rst2)
    WDEN_reg <= 1'd0;
else
    WDEN_reg <= WDEN;

always@(posedge clk2)
if(rst2)
    WTOCNT_reg <= 1'd0;
else
    WTOCNT_reg <= WTOCNT;

/*
load_sync #(
    .DATASIZE(1)
)
load_sync_WTOCNT(
    .clk(clk2),
    .rst(rst2),
    .clk2(clk),
    .rst2(rst),
    .Data_in(WTO_clk2),
    .load_en(WTO_clk2),
    .Data_out(WTO)
);
*/

//2flop
always @(posedge clk) 
if(rst)
    WTO_reg <= 1'd0;
else
    WTO_reg <= WTO_clk2;

always @(posedge clk) 
if(rst)
    WTO <= 1'd0;
else
    WTO<= WTO_reg;



endmodule
