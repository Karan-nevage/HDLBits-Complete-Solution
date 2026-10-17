/*==========================================================================================
 * HDLBits Problem : Wire_decl (Declaring wires)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Wire_decl
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   The circuits so far have been simple enough that the outputs are simple
 *   functions of the inputs. As circuits become more complex, you will need
 *   wires to connect internal components together. When you need to use a wire,
 *   you should declare it in the body of the module, somewhere before its first
 *   use. (In the future, you will encounter more types of signals and variables
 *   that are also declared the same way, but for now, we'll start with a plain
 *   wire.)
 *
 *   Implement the given circuit. Create two intermediate wires (named anything
 *   you want) to connect the AND and OR gates together. Note that the wire that
 *   feeds the NOT gate is really wire 'out', so you do not necessarily need to
 *   declare a third wire here. Notice how wires are driven by exactly one
 *   source (but can drive multiple inputs).
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input a,
 *       input b,
 *       input c,
 *       input d,
 *       output out,
 *       output out_n );
 */
//==========================================================================================
module top_module (
	input a,
	input b,
	input c,
	input d,
	output out,
	output out_n );

	wire w1, w2;		// Declare two wires (named w1 and w2)
	assign w1 = a&b;	// First AND gate
	assign w2 = c&d;	// Second AND gate
	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate

	assign out_n = ~out;	// NOT gate

endmodule
//==========================================================================================
