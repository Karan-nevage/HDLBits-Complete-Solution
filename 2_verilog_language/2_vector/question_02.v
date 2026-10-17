/*==========================================================================================
 * HDLBits Problem : Vector1 (Vectors in more detail)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector1
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a combinational circuit that splits an input half-word (16 bits,
 *   [15:0]) into lower [7:0] and upper [15:8] bytes.
 *
 *   This exercise uses Verilog's "net endianness". Vectors are declared with the
 *   most-significant bit first, e.g. [15:0]. Use the part-select operator to
 *   pick the required bits of the input vector.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   `default_nettype none
 *   module top_module(
 *       input wire [15:0] in,
 *       output wire [7:0] out_hi,
 *       output wire [7:0] out_lo );
 */
//==========================================================================================
module top_module (
	input [15:0] in,
	output [7:0] out_hi,
	output [7:0] out_lo
);

	assign out_hi = in[15:8];
	assign out_lo = in[7:0];

	// Concatenation operator also works:
	//assign {out_hi, out_lo} = in;

endmodule
//==========================================================================================
