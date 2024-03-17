module interrupt_unit(
    input clk,
    input rst,
    input stall_wrap,
    input hd_stall,
    input WFI,
    input MIE,
    input MEIE,
    input MTIE,
    input interrupt_sc,
    input interrupt_wdt,
    output logic ir_sc_taken,
    output logic ir_wdt_taken
    );
    

logic ir_wdt_taken_reg,ir_sc_taken_reg;

assign ir_sc_taken = (ir_sc_taken_reg)?1'd1:(interrupt_sc & MEIE & MIE);
assign ir_wdt_taken = (ir_wdt_taken_reg)? 1'd1 : (interrupt_wdt & MTIE & MIE);

always @(posedge clk) 
if(rst)
    ir_sc_taken_reg <= 1'd0;
else if (stall_wrap||hd_stall)
    ir_sc_taken_reg <= ir_sc_taken;
else
    ir_sc_taken_reg <= 1'd0;

always @(posedge clk) 
if(rst)
    ir_wdt_taken_reg <= 1'd0;
else if (stall_wrap||hd_stall)
    ir_wdt_taken_reg <= ir_wdt_taken;
else
    ir_wdt_taken_reg <= 1'd0;




endmodule
