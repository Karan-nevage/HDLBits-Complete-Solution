/*==========================================================================================
 * HDLBits Problem : Always_nolatches (Avoiding latches)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Always_nolatches
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Suppose you are building a circuit to process scancodes from a PS/2 keyboard
 *   for a game. Given the last two bytes of scancodes received, you need to
 *   indicate whether one of the arrow keys on the keyboard has been pressed.
 *   This involves a fairly simple mapping, which can be implemented as a case
 *   statement (or if-elseif) with four cases:
 *       Scancode [15:0]   Arrow key
 *       16'he06b          left arrow
 *       16'he072          down arrow
 *       16'he074          right arrow
 *       16'he075          up arrow
 *       Anything else     none
 *
 *   To avoid creating latches, all outputs must be assigned a value in all
 *   possible conditions. Simply having a default case is not enough; you must
 *   assign a value to all four outputs in all four cases and the default case.
 *   The easiest way is to assign a default value to all outputs before the case
 *   statement.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [15:0] scancode,
 *       output reg left,
 *       output reg down,
 *       output reg right,
 *       output reg up );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up
);

    always @(*) begin
        // Default all outputs to 0 to avoid latches
        left  = 1'b0;
        down  = 1'b0;
        right = 1'b0;
        up    = 1'b0;

        case (scancode)
            16'he06b: left  = 1'b1; // Left arrow
            16'he072: down  = 1'b1; // Down arrow
            16'he074: right = 1'b1; // Right arrow
            16'he075: up    = 1'b1; // Up arrow
        endcase
    end

endmodule
//==========================================================================================
