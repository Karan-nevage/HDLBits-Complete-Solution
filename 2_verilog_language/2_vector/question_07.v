/*==========================================================================================
 * HDLBits Problem : Vectorr (Vector reversal 1)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vectorr
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Given an 8-bit input vector [7:0], reverse its bit ordering.
 *
 *       out[0] = in[7], out[1] = in[6], ..., out[7] = in[0]
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [7:0] in,
 *       output [7:0] out );
 */
//==========================================================================================
module top_module(
    input  [7:0] in,
    output [7:0] out
);

    assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

endmodule
//==========================================================================================
