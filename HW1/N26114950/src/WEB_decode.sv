`include "RISV_def.svh"
module WEB_decode
       (
           input [6:0] WEB_opcode_i,
           output reg[3:0] WEB_o
       );

// write enable (actice low)
always@(*)
begin
    if(WEB_opcode_i==`Stype_store_opcode)
    begin
        WEB_o = 4'b0000;
    end
    else
    begin
        WEB_o = 4'b1111;
    end
end


endmodule

