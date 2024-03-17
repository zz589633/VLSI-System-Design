`include "RISV_def.svh"
module Branch_control
       (   
           input  logic clk,
           input  logic rst,
           input  logic stall_wrap,
	   input  logic ir_sc_taken,
           input  logic ir_wdt_taken,
           input  logic Bran_c_hd_stall_i,
           input  logic [2:0]Bran_c_func_i,
           input  logic[6:0]Bran_c_Opcode_i,
           input  logic[31:0]Bran_c_bimm12_i,
           input  logic[31:0]Bran_c_jimm12_i,
           input  logic[31:0]Bran_c_jimm20_i,
           input  logic[31:0]Bran_c_pc_i,
           input  logic[31:0]Bran_c_ra_i,
           input  logic[31:0]Bran_c_rb_i,
           output logic Bran_c_jump_o,
           output logic Bran_c_branch_taken_o,
           output logic[31:0]Bran_c_branch_target_o,
           output logic Bran_c_flush_o
       );

logic signed [31:0]Bran_c_ra_signed,Bran_c_rb_signed;
logic [31:0]jal_target,jalr_target,branch_target;
assign Bran_c_ra_signed = Bran_c_ra_i;
assign Bran_c_rb_signed = Bran_c_rb_i;

assign jal_target = Bran_c_pc_i + Bran_c_jimm20_i;
assign jalr_target = Bran_c_ra_i + Bran_c_jimm12_i;
assign branch_target = Bran_c_pc_i + Bran_c_bimm12_i;
/*
always@(*)
begin
    case(Bran_c_Opcode_i)
        `JAL_opcode: 
                Bran_c_jump_o = 1'b1;
        `JALR_opcode:
                Bran_c_jump_o = 1'b1;
        `Btype_opcode:
                Bran_c_jump_o = 1'b0;
        default:
                Bran_c_jump_o = 1'b0;
    endcase
end

always@(*)
begin
    case({Bran_c_Opcode_i,Bran_c_func_i})
        {`JAL_opcode,3'b???}:
            Bran_c_branch_taken_o = 1'd1;
        {`JALR_opcode,3'b???}:
            Bran_c_branch_taken_o = 1'd1;
        {`Btype_opcode,3'b000}: //beq
            Bran_c_branch_taken_o = (Bran_c_ra_i == Bran_c_rb_i);
        {`Btype_opcode,3'b001}: //bne
            Bran_c_branch_taken_o = (Bran_c_ra_i != Bran_c_rb_i);
        {`Btype_opcode,3'b100}: //blt
            Bran_c_branch_taken_o = (Bran_c_ra_signed<Bran_c_rb_signed);
        {`Btype_opcode,3'b101}: //bge
            Bran_c_branch_taken_o = (Bran_c_ra_signed>=Bran_c_rb_signed);
        {`Btype_opcode,3'b110}: //bltu
            Bran_c_branch_taken_o = (Bran_c_ra_i < Bran_c_rb_i);
        {`Btype_opcode,3'b111}: //bgeu
            Bran_c_branch_taken_o = (Bran_c_ra_i >= Bran_c_rb_i);
        default:
            Bran_c_branch_taken_o = 1'd0;
    endcase
end

always@(*)
begin
    case(Bran_c_Opcode_i)
        `JAL_opcode: 
            Bran_c_branch_target_o = jal_target;
        `JALR_opcode:
            Bran_c_branch_target_o = jalr_target;
        `Btype_opcode:
            Bran_c_branch_target_o = branch_target;
        default:
            Bran_c_branch_target_o = 32'd0;
    endcase
end
*/
//branch behavior
always_comb
begin
    unique if(Bran_c_Opcode_i==`JAL_opcode)  //jal
    begin
        Bran_c_jump_o = 1'b1;
        Bran_c_branch_taken_o = 1'b1;
        Bran_c_branch_target_o = jal_target;
    end
    else if(Bran_c_Opcode_i==`JALR_opcode)  //jalr
    begin
        Bran_c_jump_o = 1'b1;
        Bran_c_branch_taken_o = 1'b1;
        Bran_c_branch_target_o = jalr_target;
        Bran_c_branch_target_o[0] = 1'b0;
    end
    else if(Bran_c_Opcode_i==`Btype_opcode)  //branch
    begin
        case(Bran_c_func_i)
            3'b000:   //BEQ
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i == Bran_c_rb_i);
                Bran_c_branch_target_o = branch_target;
            end
            3'b001:   //BNE
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i != Bran_c_rb_i);
                Bran_c_branch_target_o = branch_target;
            end
            3'b100: //BLT
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_signed<Bran_c_rb_signed);
                Bran_c_branch_target_o = branch_target;
            end
            3'b101: //BGE
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_signed>=Bran_c_rb_signed);
                Bran_c_branch_target_o = branch_target;
            end
            3'b110: //BLTU
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i < Bran_c_rb_i);
                Bran_c_branch_target_o = branch_target;
            end
            3'b111: //BGEU
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i >= Bran_c_rb_i);
                Bran_c_branch_target_o = branch_target;
            end
            default:
            begin
                Bran_c_jump_o = 1'bx;
                Bran_c_branch_taken_o = 1'bx;
                Bran_c_branch_target_o = 32'dx;
            end
        endcase
    end
    else
    begin
        Bran_c_jump_o = 1'b0;
        Bran_c_branch_taken_o = 1'b0;
        Bran_c_branch_target_o = 32'd0;
    end
end




always_ff@(posedge clk)
if(rst)
    Bran_c_flush_o <= 1'b0;
else if(stall_wrap)
    Bran_c_flush_o <= Bran_c_flush_o;
else if(ir_sc_taken || ir_wdt_taken)
    Bran_c_flush_o <= 1'b1;
else if(Bran_c_branch_taken_o && ~Bran_c_hd_stall_i)
    Bran_c_flush_o <= 1'b1;
else
    Bran_c_flush_o <= 1'b0;




endmodule


