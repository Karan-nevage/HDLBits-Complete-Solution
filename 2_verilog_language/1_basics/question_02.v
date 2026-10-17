/*==========================================================================================
 * HDLBits Problem : Wire4 (Four wires)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Wire4
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a module with 3 inputs and 4 outputs that behaves like wires that
 *   make the following connections:
 *       w = a
 *       x = b
 *       y = b
 *       z = c
 *
 *   The graphical diagram on the problem page shows the input and output
 *   connections. Note that input b is connected to two outputs.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input a,
 *       input b,
 *       input c,
 *       output w,
 *       output x,
 *       output y,
 *       output z );
 */
//==========================================================================================
module top_module (
	input a,
	input b,
	input c,
	output w,
	output x,
	output y,
	output z  );

	assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;

	// If we're certain about the width of each signal, using
	// the concatenation operator is equivalent and shorter:
	// assign {w,x,y,z} = {a,b,b,c};

endmodule
//==========================================================================================
