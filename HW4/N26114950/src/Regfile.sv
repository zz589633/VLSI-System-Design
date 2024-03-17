`include "RISV_def.svh"
module Regfile
       (
           input clk,
           input rst,
           input RegWrite,
           input [4:0]ra_i,
           input [4:0]rb_i,
           input [4:0]rd_i,
           input [31:0]rd_value_i,
           output reg[31:0]ra_value_o,
           output reg[31:0]rb_value_o
       );

wire[31:0] x0_zero;
reg [31:0] x1_ra;
reg [31:0] x2_sp;
reg [31:0] x3_gp;
reg [31:0] x4_tp;
reg [31:0] x5_t0;
reg [31:0] x6_t1;
reg [31:0] x7_t2;
reg [31:0] x8_s0; //or fp
reg [31:0] x9_s1;
reg [31:0] x10_a0; //or v0
reg [31:0] x11_a1; //or v1
reg [31:0] x12_a2;
reg [31:0] x13_a3;
reg [31:0] x14_a4;
reg [31:0] x15_a5;
reg [31:0] x16_a6;
reg [31:0] x17_a7;
reg [31:0] x18_s2;
reg [31:0] x19_s3;
reg [31:0] x20_s4;
reg [31:0] x21_s5;
reg [31:0] x22_s6;
reg [31:0] x23_s7;
reg [31:0] x24_s8;
reg [31:0] x25_s9;
reg [31:0] x26_s10;
reg [31:0] x27_s11;
reg [31:0] x28_t3;
reg [31:0] x29_t4;
reg [31:0] x30_t5;
reg [31:0] x31_t6;


assign x0_zero=32'd0; //hardwired to zero ,can only be read

//writeback and initialize reg
always_ff@(posedge clk)
    if(rst)
    begin
        x1_ra <= 32'd0;
        x2_sp <= 32'd0;
        x3_gp <= 32'd0;
        x4_tp <= 32'd0;
        x5_t0 <= 32'd0;
        x6_t1 <= 32'd0;
        x7_t2 <= 32'd0;
        x8_s0 <= 32'd0;
        x9_s1 <= 32'd0;
        x10_a0 <= 32'd0;
        x11_a1 <= 32'd0;
        x12_a2 <= 32'd0;
        x13_a3 <= 32'd0;
        x14_a4 <= 32'd0;
        x15_a5 <= 32'd0;
        x16_a6 <= 32'd0;
        x17_a7 <= 32'd0;
        x18_s2 <= 32'd0;
        x19_s3 <= 32'd0;
        x20_s4 <= 32'd0;
        x21_s5 <= 32'd0;
        x22_s6 <= 32'd0;
        x23_s7 <= 32'd0;
        x24_s8 <= 32'd0;
        x25_s9 <= 32'd0;
        x26_s10 <= 32'd0;
        x27_s11 <= 32'd0;
        x28_t3 <= 32'd0;
        x29_t4 <= 32'd0;
        x30_t5 <= 32'd0;
        x31_t6 <= 32'd0;
    end
    else if(RegWrite)
    begin
        if(rd_i==5'd1)
            x1_ra <= rd_value_i;
        if(rd_i==5'd2)
            x2_sp <= rd_value_i;
        if(rd_i==5'd3)
            x3_gp <= rd_value_i;
        if(rd_i==5'd4)
            x4_tp <= rd_value_i;
        if(rd_i==5'd5)
            x5_t0 <= rd_value_i;
        if(rd_i==5'd6)
            x6_t1 <= rd_value_i;
        if(rd_i==5'd7)
            x7_t2 <= rd_value_i;
        if(rd_i==5'd8)
            x8_s0 <= rd_value_i;
        if(rd_i==5'd9)
            x9_s1 <= rd_value_i;
        if(rd_i==5'd10)
            x10_a0 <= rd_value_i;
        if(rd_i==5'd11)
            x11_a1 <= rd_value_i;
        if(rd_i==5'd12)
            x12_a2 <= rd_value_i;
        if(rd_i==5'd13)
            x13_a3 <= rd_value_i;
        if(rd_i==5'd14)
            x14_a4 <= rd_value_i;
        if(rd_i==5'd15)
            x15_a5 <= rd_value_i;
        if(rd_i==5'd16)
            x16_a6 <= rd_value_i;
        if(rd_i==5'd17)
            x17_a7 <= rd_value_i;
        if(rd_i==5'd18)
            x18_s2 <= rd_value_i;
        if(rd_i==5'd19)
            x19_s3 <= rd_value_i;
        if(rd_i==5'd20)
            x20_s4 <= rd_value_i;
        if(rd_i==5'd21)
            x21_s5 <= rd_value_i;
        if(rd_i==5'd22)
            x22_s6 <= rd_value_i;
        if(rd_i==5'd23)
            x23_s7 <= rd_value_i;
        if(rd_i==5'd24)
            x24_s8 <= rd_value_i;
        if(rd_i==5'd25)
            x25_s9 <= rd_value_i;
        if(rd_i==5'd26)
            x26_s10 <= rd_value_i;
        if(rd_i==5'd27)
            x27_s11 <= rd_value_i;
        if(rd_i==5'd28)
            x28_t3 <= rd_value_i;
        if(rd_i==5'd29)
            x29_t4 <= rd_value_i;
        if(rd_i==5'd30)
            x30_t5 <= rd_value_i;
        if(rd_i==5'd31)
            x31_t6 <= rd_value_i;
    end
    else
    begin
        x1_ra <= x1_ra;
        x2_sp <= x2_sp;
        x3_gp <= x3_gp;
        x4_tp <= x4_tp;
        x5_t0 <= x5_t0;
        x6_t1 <= x6_t1;
        x7_t2 <= x7_t2;
        x8_s0 <= x8_s0;
        x9_s1 <= x9_s1;
        x10_a0 <= x10_a0;
        x11_a1 <= x11_a1;
        x12_a2 <= x12_a2;
        x13_a3 <= x13_a3;
        x14_a4 <= x14_a4;
        x15_a5 <= x15_a5;
        x16_a6 <= x16_a6;
        x17_a7 <= x17_a7;
        x18_s2 <= x18_s2;
        x19_s3 <= x19_s3;
        x20_s4 <= x20_s4;
        x21_s5 <= x21_s5;
        x22_s6 <= x22_s6;
        x23_s7 <= x23_s7;
        x24_s8 <= x24_s8;
        x25_s9 <= x25_s9;
        x26_s10 <= x26_s10;
        x27_s11 <= x27_s11;
        x28_t3 <= x28_t3;
        x29_t4 <= x29_t4;
        x30_t5 <= x30_t5;
        x31_t6 <= x31_t6;
    end

//read data from reg
always_comb
begin
    case(ra_i)
        5'd0:
            ra_value_o = x0_zero;
        5'd1:
            ra_value_o = x1_ra;
        5'd2:
            ra_value_o = x2_sp;
        5'd3:
            ra_value_o = x3_gp;
        5'd4:
            ra_value_o = x4_tp;
        5'd5:
            ra_value_o = x5_t0;
        5'd6:
            ra_value_o = x6_t1;
        5'd7:
            ra_value_o = x7_t2;
        5'd8:
            ra_value_o = x8_s0;
        5'd9:
            ra_value_o = x9_s1;
        5'd10:
            ra_value_o = x10_a0;
        5'd11:
            ra_value_o = x11_a1;
        5'd12:
            ra_value_o = x12_a2;
        5'd13:
            ra_value_o = x13_a3;
        5'd14:
            ra_value_o = x14_a4;
        5'd15:
            ra_value_o = x15_a5;
        5'd16:
            ra_value_o = x16_a6;
        5'd17:
            ra_value_o = x17_a7;
        5'd18:
            ra_value_o = x18_s2;
        5'd19:
            ra_value_o = x19_s3;
        5'd20:
            ra_value_o = x20_s4;
        5'd21:
            ra_value_o = x21_s5;
        5'd22:
            ra_value_o = x22_s6;
        5'd23:
            ra_value_o = x23_s7;
        5'd24:
            ra_value_o = x24_s8;
        5'd25:
            ra_value_o = x25_s9;
        5'd26:
            ra_value_o = x26_s10;
        5'd27:
            ra_value_o = x27_s11;
        5'd28:
            ra_value_o = x28_t3;
        5'd29:
            ra_value_o = x29_t4;
        5'd30:
            ra_value_o = x30_t5;
        5'd31:
            ra_value_o = x31_t6;
    endcase
end

always_comb
begin
    case(rb_i)
        5'd0:
            rb_value_o = x0_zero;
        5'd1:
            rb_value_o = x1_ra;
        5'd2:
            rb_value_o = x2_sp;
        5'd3:
            rb_value_o = x3_gp;
        5'd4:
            rb_value_o = x4_tp;
        5'd5:
            rb_value_o = x5_t0;
        5'd6:
            rb_value_o = x6_t1;
        5'd7:
            rb_value_o = x7_t2;
        5'd8:
            rb_value_o = x8_s0;
        5'd9:
            rb_value_o = x9_s1;
        5'd10:
            rb_value_o = x10_a0;
        5'd11:
            rb_value_o = x11_a1;
        5'd12:
            rb_value_o = x12_a2;
        5'd13:
            rb_value_o = x13_a3;
        5'd14:
            rb_value_o = x14_a4;
        5'd15:
            rb_value_o = x15_a5;
        5'd16:
            rb_value_o = x16_a6;
        5'd17:
            rb_value_o = x17_a7;
        5'd18:
            rb_value_o = x18_s2;
        5'd19:
            rb_value_o = x19_s3;
        5'd20:
            rb_value_o = x20_s4;
        5'd21:
            rb_value_o = x21_s5;
        5'd22:
            rb_value_o = x22_s6;
        5'd23:
            rb_value_o = x23_s7;
        5'd24:
            rb_value_o = x24_s8;
        5'd25:
            rb_value_o = x25_s9;
        5'd26:
            rb_value_o = x26_s10;
        5'd27:
            rb_value_o = x27_s11;
        5'd28:
            rb_value_o = x28_t3;
        5'd29:
            rb_value_o = x29_t4;
        5'd30:
            rb_value_o = x30_t5;
        5'd31:
            rb_value_o = x31_t6;
    endcase
end

endmodule
