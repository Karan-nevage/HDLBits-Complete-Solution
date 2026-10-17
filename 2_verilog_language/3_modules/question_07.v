/*==========================================================================================
 * HDLBits Problem : Module_fadd (Adder 2)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_fadd
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   In this exercise, you will create a circuit with two levels of hierarchy.
 *   Your top_module will instantiate two copies of add16 (provided), each of
 *   which will instantiate 16 copies of add1 (which you must write). Thus, you
 *   must write two modules: a top_module that instantiates two copies of add16,
 *   and an add1 module that implements a full adder.
 *   Given:
 *       module add16 ( input[15:0] a, input[15:0] b, input cin,
 *                      output[15:0] sum, output cout );
 *   Write add1 so that: sum = a ^ b ^ cin, cout = a&b | a&cin | b&cin.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [31:0] a,
 *       input [31:0] b,
 *       output [31:0] sum );
 */
//==========================================================================================
//==============================< Top Module >=====================================

module top_module (
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);

    wire carry_lo, carry_hi;

    // Lower 16-bit addition
    add16 inst1 (
        .a    (a[15:0]),
        .b    (b[15:0]),
        .cin  (1'b0),
        .sum  (sum[15:0]),
        .cout (carry_lo)
    );

    // Upper 16-bit addition with carry from lower adder
    add16 inst2 (
        .a    (a[31:16]),
        .b    (b[31:16]),
        .cin  (carry_lo),
        .sum  (sum[31:16]),
        .cout (carry_hi) // ignored
    );

endmodule

//==============================< Module add1 >=====================================

module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign {cout, sum} = a + b + cin;
endmodule
//==========================================================================================
