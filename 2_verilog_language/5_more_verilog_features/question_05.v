/*==========================================================================================
 * HDLBits Problem : Popcount255 (Combinational for-loop: 255-bit population count)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Popcount255
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   A "population count" circuit counts the number of '1's in an input vector.
 *   Build a population count circuit for a 255-bit input vector. The output is
 *   8 bits wide, which is enough to hold a count from 0 to 255.
 *
 *   Use a for loop inside a combinational always block to iterate over all 255
 *   bits, adding each input bit to a running total.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [254:0] in,
 *       output [7:0] out );
 */
//==========================================================================================
module top_module(
    input [254:0] in,
    output [7:0] out );

    integer i;
    always @(*) begin
        out = 0;
        for(i = 0; i<255; i = i+1)  begin
            if (in[i] == 1) begin
               out = out +1;
            end
            else begin
                out = out + 0;
            end
        end
    end

endmodule
//==========================================================================================
