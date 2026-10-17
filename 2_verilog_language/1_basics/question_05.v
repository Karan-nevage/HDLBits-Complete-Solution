/*==========================================================================================
 * HDLBits Problem : Norgate (NOR gate)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Norgate
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a module that implements a NOR gate. A NOR gate is an OR gate with
 *   its output inverted. A NOR function needs two inputs.
 *
 *   The assign statement drives a wire (or "net", as it is more formally
 *   called) with a value, just like the earlier exercises. The value of this
 *   wire is defined by the expression on the right side of the assignment.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( input a, input b, output out );
 */
//==========================================================================================
module top_module(
    input a,
    input b,
    output out );

    nor (out, a, b);

endmodule
//==========================================================================================
