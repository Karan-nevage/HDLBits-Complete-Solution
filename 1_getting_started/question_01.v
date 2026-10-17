/*==========================================================================================
 * HDLBits Problem : Getting Started
 * Category        : Getting Started
 * Link            : https://hdlbits.01xz.net/wiki/Step_one
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   This is the very first exercise. Build a circuit with no inputs and one
 *   output. That output should always drive 1 (or logic high).
 *
 *   In this exercise, you will create a module with one output that outputs a
 *   constant 1. See if you can figure out the Verilog syntax from the examples
 *   on the problem page, then compile and simulate it.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( output one );
 */
//==========================================================================================
module top_module( output one );

	assign one = 1'b1;

endmodule
//==========================================================================================
