/*==========================================================================================
 * HDLBits Problem : Alwaysblock1 (Always blocks - combinational)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Alwaysblock1
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Since digital circuits are composed of logic connected by wires, any
 *   circuit can be expressed as some combination of modules and assign
 *   statements. However, sometimes this is not the most convenient way to
 *   describe the circuit. Procedures (of which always blocks are one example)
 *   provide an alternative syntax for describing circuits.
 *
 *   For synthesizing combinational hardware, use a combinational always block
 *   (always @(*)). Build an AND gate using both an assign statement and a
 *   combinational always block.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input a,
 *       input b,
 *       output wire out_assign,
 *       output reg out_alwaysblock );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    assign out_assign = a & b ;
    always @(*)
    out_alwaysblock = a & b ;

endmodule
//==========================================================================================
