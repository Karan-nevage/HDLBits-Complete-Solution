/*==========================================================================================
 * HDLBits Problem : Conditional (Conditional ternary operator)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Conditional
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Given four unsigned numbers, find the minimum. Unsigned means that the
 *   numbers are always non-negative, so the smallest 8-bit value is 0.
 *
 *   Verilog has a ternary conditional operator ( ? : ) much like C:
 *       (condition ? if_true : if_false)
 *   This can be used to choose one of two values based on condition (a mux!) on
 *   one line, without using an if-then inside a combinational always block.
 *
 *   Use the ternary operator to find the minimum of two values, then combine
 *   several of them to find the minimum of all four. A 2-bit wide example:
 *       min(a,b,c,d) = min( min(a,b), min(c,d) )
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [7:0] a, b, c, d,
 *       output [7:0] min );
 */
//==========================================================================================
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

	// Wire Declarations
    wire [7:0] min_ab, min_cd;

    // assign intermediate_result1 = compare? true: false;
    assign min_ab = (a < b) ? a : b;
    assign min_cd = (c < d) ? c : d;
    assign min = (min_ab < min_cd) ? min_ab : min_cd ;
endmodule
//==========================================================================================
