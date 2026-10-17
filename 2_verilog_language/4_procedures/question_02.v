/*==========================================================================================
 * HDLBits Problem : Alwaysblock2 (Always blocks - clocked)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Alwaysblock2
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   There are two types of always blocks that are relevant for synthesizing
 *   hardware:
 *       - Combinational: always @(*)
 *       - Clocked:       always @(posedge clk)
 *
 *   Clocked always blocks create a blob of combinational logic just like
 *   combinational always blocks, but also create a set of flip-flops (or
 *   "registers") at the output of the blob of combinational logic. Instead of
 *   the outputs of the blob being visible immediately, the outputs are visible
 *   only immediately after the next (posedge clk).
 *
 *   Build an XOR gate three ways: using an assign statement, a combinational
 *   always block, and a clocked always block.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input clk,
 *       input a,
 *       input b,
 *       output wire out_assign,
 *       output reg out_always_comb,
 *       output reg out_always_ff );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );

    assign out_assign = a ^ b ;
    always @(*)    out_always_comb = a ^ b ;
    always @(posedge clk)	out_always_ff = a ^ b;

endmodule
//==========================================================================================
