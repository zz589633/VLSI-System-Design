`include "RISV_def.svh"
module Branch_control
       (   
           input logic clk,
           input logic rst,
           input logic Bran_c_hd_stall_i,
           input logic [2:0]Bran_c_func_i,
           input logic[6:0]Bran_c_Opcode_i,
           input logic[31:0]Bran_c_bimm12_i,
           input logic[31:0]Bran_c_jimm12_i,
           input logic[31:0]Bran_c_jimm20_i,
           input logic[31:0]Bran_c_pc_i,
           input logic[31:0]Bran_c_ra_i,
           input logic[31:0]Bran_c_rb_i,
           output logic Bran_c_jump_o,
           output logic Bran_c_branch_taken_o,
           output logic[31:0]Bran_c_branch_target_o,
           output logic Bran_c_flush_o
       );

logic signed [31:0]Bran_c_ra_signed,Bran_c_rb_signed;
assign Bran_c_ra_signed = Bran_c_ra_i;
assign Bran_c_rb_signed = Bran_c_rb_i;

//branch behavior
always_comb
begin
    unique if(Bran_c_Opcode_i==`JAL_opcode)  //jal
    begin
        Bran_c_jump_o = 1'b1;
        Bran_c_branch_taken_o = 1'b1;
        Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_jimm20_i;

    end
    else if(Bran_c_Opcode_i==`JALR_opcode)  //jalr
    begin
        Bran_c_jump_o = 1'b1;
        Bran_c_branch_taken_o = 1'b1;
        Bran_c_branch_target_o = Bran_c_ra_i + Bran_c_jimm12_i;
        Bran_c_branch_target_o[0] = 1'b0;

    end
    else if(Bran_c_Opcode_i==`Btype_opcode)  //branch
    begin
        case(Bran_c_func_i)
            3'b000:   //BEQ
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i == Bran_c_rb_i);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
            end
            3'b001:   //BNE
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i != Bran_c_rb_i);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
            end
            3'b100: //BLT
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_signed<Bran_c_rb_signed);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
            end
            3'b101: //BGE
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_signed>=Bran_c_rb_signed);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
            end
            3'b110: //BLTU
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i < Bran_c_rb_i);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
            end
            3'b111: //BGEU
            begin
                Bran_c_jump_o = 1'b0;
                Bran_c_branch_taken_o = (Bran_c_ra_i >= Bran_c_rb_i);
                Bran_c_branch_target_o = Bran_c_pc_i + Bran_c_bimm12_i;
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



always_ff@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        Bran_c_flush_o <= 1'b0;
    end
    else if(Bran_c_branch_taken_o&&~Bran_c_hd_stall_i)
    begin
        Bran_c_flush_o <= 1'b1;
    end
    else
    begin
        Bran_c_flush_o <= 1'b0;
    end

end


endmodule


