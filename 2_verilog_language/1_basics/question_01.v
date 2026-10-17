/*==========================================================================================
 * HDLBits Problem : Wire (Simple wire)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Wire
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a module with one input and one output that behaves like a wire.
 *
 *   Unlike physical wires, wires (and other signals) in Verilog are
 *   directional. This means information flows in only one direction, from
 *   (usually one) source to the sinks (the module's outputs can be a sink).
 *   In a Verilog "continuous assignment" (assign left_side = right_side;), the
 *   value of the signal on the left side is driven by the value of the
 *   expression on the right side. The assignment is "continuous" because the
 *   assignment continues all the time even if the right side's value changes.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( input in, output out );
 */
//==========================================================================================
module top_module( input in, output out );

	assign out = in;
	// Note that wires are directional, so "assign in = out" is not equivalent.

endmodule
//==========================================================================================
