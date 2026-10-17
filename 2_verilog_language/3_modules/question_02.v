/*==========================================================================================
 * HDLBits Problem : Module_pos (Connecting ports by position)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_pos
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   This problem is similar to the previous one (Module). You are given a module
 *   mod_a that has 2 outputs and 4 inputs, in that order. You must connect the 6
 *   ports by position to your top-level module, which has the ports in a
 *   different order. Given:
 *       module mod_a ( output out1, output out2, input in1, input in2,
 *                      input in3, input in4 );
 *
 *   Connecting by position means the first port in the instantiation connects to
 *   the first port of the module, and so on.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input a, input b, input c, input d,
 *       output out1, output out2 );
 */
//==========================================================================================
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);
    mod_a(out1, out2, a, b, c, d);

endmodule
//==========================================================================================
