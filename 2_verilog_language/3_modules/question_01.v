/*==========================================================================================
 * HDLBits Problem : Module (Modules)
 * Category        : Verilog Language -> Modules: Hierarchy
 * Link            : https://hdlbits.01xz.net/wiki/Module
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   The hierarchy of modules is created by instantiating one module inside
 *   another, as long as all of the modules used belong to the same project.
 *
 *   You are given a module named mod_a that has 2 outputs and 2 inputs, in that
 *   order. You must connect the 6 ports to your top-level module. Given:
 *       module mod_a ( input in1, input in2, output out );
 *   Connect in1 to a, in2 to b, and out to the top-level out.
 *
 *   Ports may be connected by position or by name. Connecting by name is
 *   generally safer and preferred.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module ( input a, input b, output out );
 */
//==========================================================================================
module top_module (input a, input b, output out);

	// Create an instance of "mod_a" named "inst1", and connect ports by name:
	mod_a inst1 (
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
		.out(out)	// Port "out" connects to wire "out"
				// (Note: mod_a's port "out" is not related to top_module's wire "out".
				// It is simply coincidence that they have the same name)
	);

/*
	// Create an instance of "mod_a" named "inst2", and connect ports by position:
	mod_a inst2 ( a, b, out );	// The three wires are connected to ports in1, in2, and out, respectively.
*/

endmodule
//==========================================================================================
