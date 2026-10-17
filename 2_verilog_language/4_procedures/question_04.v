/*==========================================================================================
 * HDLBits Problem : Always_if2 (If statement latches)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Always_if2
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   A common source of bugs: How to avoid making latches.
 *
 *   When designing circuits, you must think first in terms of circuits:
 *   I want this logic gate, I want a combinational blob of logic that has these
 *   inputs and produces these outputs, I want a combinational blob of logic
 *   followed by a set of flip-flops. What you must not do is write the code
 *   first, then hope it generates a proper circuit.
 *
 *   A latch is generated when an always @(*) block does not assign a value to a
 *   signal in every possible path (i.e. an incomplete if/case). Fix the given
 *   buggy code so that it has no latches: every output must be assigned in every
 *   branch.
 *       - If the CPU is overheated, shut off the computer.
 *       - If you've arrived at your destination OR the gas tank is empty,
 *         stop driving.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input      cpu_overheated,
 *       output reg shut_off_computer,
 *       input      arrived,
 *       input      gas_tank_empty,
 *       output reg keep_driving );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule
//==========================================================================================
