/*==========================================================================================
 * HDLBits Problem : Andgate (AND gate)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Andgate
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a module that implements an AND gate.
 *
 *   This circuit now has three wires (a, b, and out). Wires a and b already
 *   have values driven onto them by the input ports. But wire out currently is
 *   not driven by anything. Write an assign statement that drives out with the
 *   AND of signals a and b.
 *
 *   Note that this circuit is similar to the NOT gate, just with one more
 *   input. If it sounds like it is only a tiny bit different, it is.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( input a, input b, output out );
 */
//==========================================================================================
module top_module(
    input a,
    input b,
    output out );

    and (out, a, b);

endmodule
//==========================================================================================
