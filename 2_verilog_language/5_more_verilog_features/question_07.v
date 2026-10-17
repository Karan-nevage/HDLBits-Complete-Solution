/*==========================================================================================
 * HDLBits Problem : Bcdadd100 (Generate for-loop: 100-digit BCD adder)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Bcdadd100
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   You are provided with a BCD (binary-coded decimal) one-digit adder named
 *   bcd_fadd that adds two BCD digits and a carry-in, and produces a sum and
 *   carry-out. Given:
 *       module bcd_fadd ( input [3:0] a, input [3:0] b, input cin,
 *                         output cout, output [3:0] sum );
 *
 *   Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry
 *   adder. Your adder should add two 100-digit BCD numbers (packed into 400-bit
 *   vectors) and a carry-in to produce a 100-digit sum and carry out. Use a
 *   generate for-loop to create the 100 instances and chain their carries.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [399:0] a, b,
 *       input cin,
 *       output cout,
 *       output [399:0] sum );
 */
//==========================================================================================
module top_module(
    input  [399:0] a, b,
    input          cin,
    output         cout,
    output [399:0] sum
);

    wire [99:0] carry;
    genvar i;

    generate
        for (i = 0; i < 100; i = i + 1) begin : bcd_chain
            if (i == 0) begin
                bcd_fadd adder (.a   (a[3:0]),
                    			.b   (b[3:0]),
                    			.cin (cin),
                    			.sum (sum[3:0]),
                    			.cout(carry[0])
                );
            end
            else begin
                bcd_fadd adder (.a   (a[i*4 +: 4]),
                    			.b   (b[i*4 +: 4]),
                    			.cin (carry[i-1]),
                    			.sum (sum[i*4 +: 4]),
                    			.cout(carry[i])
                );
            end
       end
    endgenerate

    assign cout = carry[99];

endmodule
//==========================================================================================