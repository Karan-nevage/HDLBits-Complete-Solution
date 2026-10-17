/*==========================================================================================
 * HDLBits Problem : Module_addsub (Adder-subtractor)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_addsub
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   An adder-subtractor can be built from an adder by optionally negating one of
 *   the inputs, which is equivalent to inverting the input then adding 1. The
 *   net result is a circuit that can do two operations: (a + b) when sub = 0,
 *   and (a - b) when sub = 1.
 *
 *   Build the adder-subtractor using the two add16 modules provided. Perform the
 *   subtraction b - a by inverting b and setting the first adder's carry-in to 1
 *   when sub = 1. Use a 32-bit wide XOR gate to conditionally invert the b input
 *   (b XOR with the replicated sub signal). Given:
 *       module add16 ( input[15:0] a, input[15:0] b, input cin,
 *                      output[15:0] sum, output cout );
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [31:0] a,
 *       input [31:0] b,
 *       input sub,
 *       output [31:0] sum );
 */
//==========================================================================================
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout_up, cout_ign;
    wire [31:0] xor_out;

    assign xor_out = b ^ {32{sub}};  // Conditional inversion using replication

    add16 inst1 (
        .a(a[15:0]),
        .b(xor_out[15:0]),
        .cin(sub),
        .sum(sum[15:0]),
        .cout(cout_up)
    );

    add16 inst2 (
        .a(a[31:16]),
        .b(xor_out[31:16]),
        .cin(cout_up),
        .sum(sum[31:16]),
        .cout(cout_ign)
    );

endmodule
//==========================================================================================
