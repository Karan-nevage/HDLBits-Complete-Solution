/*==========================================================================================
 * HDLBits Problem : Vectorgates (Bitwise operators)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vectorgates
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a circuit that has two 3-bit inputs that computes the bitwise-OR of
 *   the two vectors, the logical-OR of the two vectors, and the inverse (NOT)
 *   of both vectors. Place the inverse of b in the upper half of out_not (i.e.
 *   bits [5:3]), and the inverse of a in the lower half.
 *
 *   Recall the distinction between bitwise operators (which produce a vector
 *   result) and logical operators (which produce a single-bit result).
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [2:0] a,
 *       input [2:0] b,
 *       output [2:0] out_or_bitwise,
 *       output out_or_logical,
 *       output [5:0] out_not );
 */
//==========================================================================================
module top_module(
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);

    assign out_or_bitwise = (a | b);
	assign out_or_logical = (a || b);
    assign out_not = {(~b),(~a)};

endmodule
//==========================================================================================
