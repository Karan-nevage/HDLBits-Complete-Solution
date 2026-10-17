/*==========================================================================================
 * HDLBits Problem : Output Zero
 * Category        : Getting Started
 * Link            : https://hdlbits.01xz.net/wiki/Zero
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a circuit with no inputs and one output that outputs a constant 0.
 *
 *   Now that you've worked through the previous problem, let's see if you can
 *   do a similar one entirely on your own. This exercise is similar to the
 *   previous one (Getting Started), except now the output should always drive
 *   0 (or logic low).
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( output zero );
 */
//==========================================================================================
module top_module( output zero );

	assign zero = 1'b0;

endmodule
//==========================================================================================
