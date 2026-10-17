/*==========================================================================================
 * HDLBits Problem : Module_shift8 (Modules and vectors)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_shift8
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   This exercise is an extension of Module_shift. Instead of module ports being
 *   only single pins, we now have modules with vectors as ports, to which you
 *   will attach wire vectors instead of plain wires. Like Verilog nets, the
 *   width of a Verilog vector port is not required to match the vector connected
 *   to it, but this will cause zero-padding or truncation of the vector. Given:
 *       module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
 *
 *   Instantiate three of them, then chain them to make an 8-bit wide shift
 *   register of length 3. Then create a 4-to-1 multiplexer (not provided) that
 *   chooses what to output depending on sel[1:0]:
 *       sel=0 -> the input d, sel=1 -> after the first dff,
 *       sel=2 -> after the second, sel=3 -> after the third.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input clk,
 *       input [7:0] d,
 *       input [1:0] sel,
 *       output [7:0] q );
 */
//==========================================================================================
module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);

    wire [7:0] y1,y2,y3;

    //---> Instantiating modules [connecting by name]
    my_dff8 inst1(.clk(clk),.d(d),.q(y1));	// First d-ff
    my_dff8 inst2(.clk(clk),.d(y1),.q(y2));	// Second d-ff
    my_dff8 inst3(.clk(clk),.d(y2),.q(y3));	// Third d-ff

    //---> Data Selector [Mux]
    assign q = (sel == 2'b00)? d: (sel == 2'b01)? y1: (sel == 2'b10)? y2: y3;

endmodule
//==========================================================================================
