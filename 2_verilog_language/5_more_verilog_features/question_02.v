/*==========================================================================================
 * HDLBits Problem : Reduction (Reduction operators)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Reduction
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Parity checking is often used as a simple method of detecting errors when
 *   transmitting data through an imperfect channel. Create a circuit that will
 *   compute a parity bit for a 8-bit byte (which will add a 9th bit to the byte).
 *   We will use "even" parity, where the parity bit is just the XOR of all 8
 *   data bits.
 *
 *   The reduction operator ^ applied to a vector (e.g. ^in) computes the XOR of
 *   all bits in the vector, which is exactly the even-parity bit.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [7:0] in,
 *       output parity );
 */
//==========================================================================================
module top_module (
    input [7:0] in,
    output parity);

    // assign parity
    //assign parity = in[0] ^ in[1] ^ in[2] ^ in[3] ^ in[4] ^ in[5] ^ in[6] ^ in[7];

    // you can use this also
	  assign parity = ^in;
endmodule
//==========================================================================================
