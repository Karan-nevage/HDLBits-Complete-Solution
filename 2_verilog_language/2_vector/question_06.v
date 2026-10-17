/*==========================================================================================
 * HDLBits Problem : Vector3 (Vector concatenation operator)
 * Category        : Verilog Language -> Vectors
 * Link            : https://hdlbits.01xz.net/wiki/Vector3
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Given several input vectors, concatenate them together then split them up
 *   into several output vectors. There are six 5-bit input vectors: a, b, c, d,
 *   e, and f, for a total of 30 bits of input. There are four 8-bit output
 *   vectors: w, x, y, and z, for 32 bits of output. The output should be a
 *   concatenation of the input vectors followed by two 1 bits:
 *
 *       w = {a, b[4:2]}
 *       x = {b[1:0], c, d[4]}
 *       y = {d[3:0], e[4:1]}
 *       z = {e[0], f, 2'b11}
 *
 *   The concatenation operator { ... , ... } is used to join the vectors.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [4:0] a, b, c, d, e, f,
 *       output [7:0] w, x, y, z );
 */
//==========================================================================================
module top_module (
    input  [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z
);

    // Concatenating inputs and appending two '1' bits
    wire [31:0] temp;
    assign temp = {a, b, c, d, e, f, 2'b11};

    // Splitting the concatenated vector into outputs
    assign w = temp[31:24];
    assign x = temp[23:16];
    assign y = temp[15:8];
    assign z = temp[7:0];

endmodule
//==========================================================================================
