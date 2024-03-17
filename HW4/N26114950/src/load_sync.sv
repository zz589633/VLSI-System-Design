`include "sync_pulse.sv"

module load_sync #(
    DATASIZE = 32
)
(
    input                       clk,
    input                       rst,
    input                       clk2,
    input                       rst2,
    input [DATASIZE-1:0]        Data_in,
    input                       load_en,
    output logic [DATASIZE-1:0] Data_out,
    output logic                wready
);

logic[DATASIZE-1:0]Data_reg;
logic load_clk2,load_clk;

sync_pulse sync_load_clk
(
    .clk(clk),
    .rst(rst),
    .clk2(clk2),
    .rst2(rst2),
    .Data_in(load_en),
    .Data_out(load_clk2) 
);


sync_pulse sync_load_clk2
(
    .clk(clk2),
    .rst(rst2),
    .clk2(clk),
    .rst2(rst),
    .Data_in(load_clk2),
    .Data_out(load_clk) 
);


always@(posedge clk)
if(rst)
    Data_reg <= 0;
else
    Data_reg <= (load_en)? Data_in : Data_reg;

always@(posedge clk2)
if(rst2)
    Data_out <= 0;
else 
    Data_out <= (load_clk2)?Data_reg : Data_out;

always@(posedge clk)
if(rst)
    wready <= 1'd1;
else if(load_en)
    wready <= 1'd0;
else if (load_clk)
    wready <= 1'd1;
else
    wready <= wready;

    


endmodule


