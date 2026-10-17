/*==========================================================================================
 * HDLBits Problem : Always_if (If statement)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Always_if
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   An if statement usually creates a 2-to-1 multiplexer, selecting one input if
 *   the condition is true, and the other input if the condition is false. This
 *   is equivalent to a continuous assignment using a conditional (ternary)
 *   operator.
 *
 *   Build a 2-to-1 mux that selects between a and b. Choose b if both sel_b1 and
 *   sel_b2 are true. Otherwise, choose a. Do the same twice, once using assign
 *   statements and once using an if statement.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input a,
 *       input b,
 *       input sel_b1,
 *       input sel_b2,
 *       output wire out_assign,
 *       output reg out_always );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   );

    assign out_assign = (sel_b1 && sel_b2) ? b : a;

    always @(*) begin
        if (sel_b1 && sel_b2)  out_always = b;
        else out_always = a;
   end
endmodule
//==========================================================================================
