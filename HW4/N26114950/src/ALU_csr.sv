`include "RISV_def.svh"

module ALU_csr(
input [31:0] src1,
input [31:0] csr_src,
input [31:0] imm,
input [2:0]  CSR_op,
output logic [31:0] CSR_result
);

always_comb begin
	case (CSR_op)
		`CSRRW:  CSR_result = src1;
		`CSRRS:  CSR_result = csr_src | src1;
		`CSRRC:  CSR_result = csr_src & ~src1;
		`CSRRWI: CSR_result = imm;              //unsigned??
		`CSRRSI: CSR_result = csr_src | imm;
		`CSRRCI: CSR_result = csr_src & ~imm;
		default: CSR_result = 32'd0;
	endcase
end

endmodule
