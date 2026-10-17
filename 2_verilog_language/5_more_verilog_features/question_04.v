/*==========================================================================================
 * HDLBits Problem : Vector100r (Combinational for-loop: Vector reversal 2)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Vector100r
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Given a 100-bit input vector [99:0], reverse its bit ordering.
 *
 *   This is the same task as Vectorr but with 100 bits instead of 8, so writing
 *   out every bit by hand is impractical. Use a for loop inside a combinational
 *   always block to assign each output bit from the mirrored input bit:
 *       out[i] = in[99-i]
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [99:0] in,
 *       output [99:0] out );
 */
//==========================================================================================
module top_module(
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always @(*) begin
        for (i = 0 ; i< 100; i= i+1) begin
            out[i] = in [99-i];
        end
    end

endmodule
//==========================================================================================
