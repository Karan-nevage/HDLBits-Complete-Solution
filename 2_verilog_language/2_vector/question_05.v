/*==========================================================================================
 * HDLBits Problem : Gates4 (Four-input gates)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Gates4
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a combinational circuit with four inputs, in[3:0], and three outputs:
 *       out_and : output of a 4-input AND gate.
 *       out_or  : output of a 4-input OR gate.
 *       out_xor : output of a 4-input XOR gate.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [3:0] in,
 *       output out_and,
 *       output out_or,
 *       output out_xor );
 */
//==========================================================================================
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);

    assign out_and = &in;
    assign out_or  = |in;
    assign out_xor = ^in;

endmodule
//==========================================================================================
