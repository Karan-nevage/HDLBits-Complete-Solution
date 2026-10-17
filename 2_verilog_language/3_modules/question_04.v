/*==========================================================================================
 * HDLBits Problem : Module_shift (Three modules)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module_shift
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   You are given a module my_dff with two inputs and one output (that
 *   implements a D flip-flop). Instantiate three of them, then chain them
 *   together to make a shift register of length 3. The clk port needs to be
 *   connected to all instances. Given:
 *       module my_dff ( input clk, input d, output q );
 *
 *   The three flip-flops are connected in series: d -> dff1 -> dff2 -> dff3 -> q.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module ( input clk, input d, output q );
 */
//==========================================================================================
module top_module ( input clk, input d, output q );

    //---> Internal Wires
    wire y1,y2,y3;

    //---> Instantiating modules [connecting by name]
    my_dff inst1(.clk(clk),.d(d),.q(y1));	// First d-ff
    my_dff inst2(.clk(clk),.d(y1),.q(y2));	// Second d-ff
    my_dff inst3(.clk(clk),.d(y2),.q(q));	// Third d-ff

    //---> Instantiating modules [connecting by position]
    // my_dff inst1( clk, d, a );
 	// my_dff inst2( clk, a, b );
 	// my_dff inst3( clk, b, q );

endmodule
//==========================================================================================
