/*==========================================================================================
 * HDLBits Problem : Module_name (Connecting ports by name)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_name
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   You are given a module mod_a with 2 outputs and 4 inputs, in some order. You
 *   must connect the 6 ports by name to your top-level module. Given:
 *       module mod_a ( output out1, output out2,
 *                      input in1, input in2, input in3, input in4 );
 *
 *   Connect them so that:
 *       out1 -> top out1, out2 -> top out2,
 *       in1 -> a, in2 -> b, in3 -> c, in4 -> d
 *
 *   Connecting by name does not depend on the order of ports in the module
 *   declaration, which makes it less error-prone.
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
    //---> Signals of instantiating modules are always outside of brackets
    mod_a(
        .in1(a),
        .in2(b),
        .in3(c),
        .in4(d),
        .out1(out1),
        .out2(out2)
    );

endmodule
//==========================================================================================
