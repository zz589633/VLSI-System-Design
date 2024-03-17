module sync_pulse
(
    input clk,
    input rst,
    input clk2,
    input rst2,
    input Data_in,
    output logic Data_out 
);

logic Tq,q1_clk2,q2_clk2,reg_clk2;

always@(posedge clk)
if(rst)
    Tq <= 1'd0;
else
    Tq <= (Tq ^ Data_in);

// 2flop
always@(posedge clk2)
if(rst2)
    {q2_clk2,q1_clk2} <= 0;
else
    {q2_clk2,q1_clk2} <= {q1_clk2,Tq};


always@(posedge clk2)
if(rst2)
    reg_clk2 <= 1'd0;
else
    reg_clk2 <= q2_clk2;

assign Data_out = reg_clk2 ^ q2_clk2;

endmodule