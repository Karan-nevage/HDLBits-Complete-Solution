/*==========================================================================================
 * HDLBits Problem : Module_add (Adder 1)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_add
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   You are given a 16-bit adder module add16, which performs a 16-bit addition.
 *   Instantiate two of them to create a 32-bit adder. One add16 module computes
 *   the lower 16 bits of the addition result, while the second add16 module
 *   computes the upper 16 bits, after receiving the carry-out from the first
 *   adder. Your 32-bit adder does not need to handle carry-in or carry-out.
 *   Given:
 *       module add16 ( input[15:0] a, input[15:0] b, input cin,
 *                      output[15:0] sum, output cout );
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [31:0] a,
 *       input [31:0] b,
 *       output [31:0] sum );
 */
//==========================================================================================
module top_module(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum_lo, sum_hi;
    wire carry_lo, carry_hi;

    // Lower 16 bits addition
    add16 u0 (
        .a    (a[15:0]),
        .b    (b[15:0]),
        .cin  (1'b0),
        .sum  (sum_lo),
        .cout (carry_lo)
    );

    // Upper 16 bits addition with carry from lower adder
    add16 u1 (
        .a    (a[31:16]),
        .b    (b[31:16]),
        .cin  (carry_lo),
        .sum  (sum_hi),
        .cout (carry_hi) // ignored
    );

    assign sum = {sum_hi, sum_lo};

endmodule
//==========================================================================================
