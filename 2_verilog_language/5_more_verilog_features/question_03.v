/*==========================================================================================
 * HDLBits Problem : Gates100 (Reduction: Even wider gates)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Gates100
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a combinational circuit with 100 inputs, in[99:0], and three outputs:
 *       out_and : output of a 100-input AND gate.
 *       out_or  : output of a 100-input OR gate.
 *       out_xor : output of a 100-input XOR gate.
 *
 *   This is an extension of Gates4 to 100 inputs. Doing this the long way (with
 *   100-input gates) is impractical, so use the reduction operators &, |, ^
 *   applied directly to the input vector.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [99:0] in,
 *       output out_and,
 *       output out_or,
 *       output out_xor );
 */
//==========================================================================================
module top_module(
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor
);
	assign out_and = & in;
	assign out_or = | in;
	assign out_xor = ^ in;
endmodule
//==========================================================================================
