/*==========================================================================================
 * HDLBits Problem : Vector2 (Vector part select)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector2
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16],
 *   etc.). Build a circuit that will reverse the byte ordering of the 4-byte
 *   word (endianness conversion).
 *
 *       AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa
 *
 *   This operation is frequently used when the byte ordering used by one
 *   processor differs from the byte ordering expected by another.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [31:0] in,
 *       output [31:0] out );
 */
//==========================================================================================
module top_module(
    input [31:0] in,
    output reg [31:0] out );

    assign out[31:24] = in[ 7: 0];
	assign out[23:16] = in[15: 8];
	assign out[15: 8] = in[23:16];
	assign out[ 7: 0] = in[31:24];

    // This can be possible
    //assign out = {in[7:0], in[15:8], in[23:16], in[31:24]};

endmodule
//==========================================================================================
