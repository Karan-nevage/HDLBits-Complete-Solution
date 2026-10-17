/*==========================================================================================
 * HDLBits Problem : Module_cseladd (Carry-select adder)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_cseladd
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   One drawback of the ripple-carry adder is that the delay for an adder to
 *   compute the carry-out is fairly slow, and the second-stage adder cannot
 *   begin computing its carry-out until the first-stage adder has finished. A
 *   carry-select adder improves the delay by computing the upper 16 bits twice:
 *   once assuming carry-in is 0 and once assuming it is 1, then using a 2-to-1
 *   multiplexer to select which result to use once the carry-out of the lower
 *   adder is known. Instantiate three copies of add16 and a 16-bit wide 2-to-1
 *   multiplexer. Given:
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

    wire cout_lo;
    wire [15:0] sel_a, sel_b;

    // Lower 16-bit adder
    add16 inst1 (
        .a    (a[15:0]),
        .b    (b[15:0]),
        .cin  (1'b0),
        .sum  (sum[15:0]),
        .cout (cout_lo)
    );

    // Upper 16-bit adder with cin = 0
    add16 inst2 (
        .a    (a[31:16]),
        .b    (b[31:16]),
        .cin  (1'b0),
        .sum  (sel_a),
        .cout ()
    );

    // Upper 16-bit adder with cin = 1
    add16 inst3 (
        .a    (a[31:16]),
        .b    (b[31:16]),
        .cin  (1'b1),
        .sum  (sel_b),
        .cout ()
    );

    // Select correct upper sum based on cout_lo
    assign sum[31:16] = (cout_lo == 1'b0) ? sel_a : sel_b;

endmodule
//==========================================================================================
