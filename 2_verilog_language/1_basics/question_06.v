/*==========================================================================================
 * HDLBits Problem : Xnorgate (XNOR gate)
 * Category        : Verilog Language -> Basics
 * Link            : https://hdlbits.01xz.net/wiki/Xnorgate
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a module that implements an XNOR gate.
 *
 *   An XNOR gate produces a 1 at its output when its two inputs are equal, and
 *   a 0 when they differ. It is equivalent to an XOR gate with its output
 *   inverted.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module( input a, input b, output out );
 */
//==========================================================================================
module top_module(
    input a,
    input b,
    output out );

    xnor (out, a, b);

endmodule
//==========================================================================================
