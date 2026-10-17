/*==========================================================================================
 * HDLBits Problem : Vector0 (Vectors)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector0
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a circuit that has one 3-bit input, then outputs the same vector, and
 *   also splits it into three separate 1-bit outputs. Connect output o0 to the
 *   input vector's position 0, o1 to position 1, and so on.
 *
 *   Vectors are used to group related signals using one name to make it more
 *   convenient to manipulate. For example, wire [7:0] w; declares an 8-bit
 *   vector named w that is functionally equivalent to having 8 separate wires.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [2:0] vec,
 *       output [2:0] outv,
 *       output o2,
 *       output o1,
 *       output o0 );
 */
//==========================================================================================
module top_module(
	input [2:0] vec,
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);

	assign outv = vec;

	// This is ok too: assign {o2, o1, o0} = vec;
	assign o0 = vec[0];
	assign o1 = vec[1];
	assign o2 = vec[2];

endmodule
//==========================================================================================
