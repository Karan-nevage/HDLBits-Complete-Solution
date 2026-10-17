/*==========================================================================================
 * HDLBits Problem : Vector4 (Replication operator)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector4
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   A common place to see a replication operator is when sign-extending a
 *   smaller number to a larger one, while preserving its signed value. This is
 *   done by replicating the sign bit (the most significant bit) to the left.
 *
 *   Build a circuit that sign-extends an 8-bit number to 32 bits. This requires
 *   a concatenation of 24 copies of the sign bit (i.e. replicate bit [7] 24
 *   times) followed by the 8-bit number itself.
 *
 *       assign out = { {24{in[7]}}, in };
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [7:0] in,
 *       output [31:0] out );
 */
//==========================================================================================
module top_module(
    input  [7:0] in,
    output [31:0] out
);

    assign out = { {24{in[7]}}, in };

endmodule
//==========================================================================================
