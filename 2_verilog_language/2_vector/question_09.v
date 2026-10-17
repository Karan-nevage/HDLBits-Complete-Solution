/*==========================================================================================
 * HDLBits Problem : Vector5 (More replication)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector5
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise
 *   one-bit comparisons in the 25-bit output vector. The output should be 1 if
 *   the two bits being compared are equal.
 *
 *       out[24] = ~a^a; out[23] = ~a^b; out[22] = ~a^c; ...
 *
 *   It would be extremely tedious to write 25 assign statements, so build the
 *   circuit using the replication and concatenation operators. The top vector
 *   is a replication of each input 5 times; the bottom vector replicates the
 *   group {a,b,c,d,e} 5 times. XNOR the two together.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input a, b, c, d, e,
 *       output [24:0] out );
 */
//==========================================================================================
module top_module (
	input a, b, c, d, e,
	output [24:0] out
);

	wire [24:0] top, bottom;
	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
	assign bottom = {5{a,b,c,d,e}};
	assign out = ~top ^ bottom;	// Bitwise XNOR

	// This could be done on one line:
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};

endmodule
//==========================================================================================
