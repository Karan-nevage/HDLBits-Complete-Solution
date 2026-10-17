/*==========================================================================================
 * HDLBits Problem : Adder100i (Generate for-loop: 100-bit binary adder 2)
 * Category        : Verilog Language -> More Verilog Features
 * Link            : https://hdlbits.01xz.net/wiki/Adder100i
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Create a 100-bit binary ripple-carry adder by instantiating 100 full adders.
 *   The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum
 *   and carry out. To encourage you to actually instantiate full adders, also
 *   output the carry-out from each full adder in the ripple-carry chain. cout[99]
 *   is the final carry-out from the last full adder, and is the carry-out you
 *   usually see.
 *
 *   Use a generate for-loop to instantiate the 100 full adder modules instead of
 *   writing them out by hand.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module(
 *       input [99:0] a, b,
 *       input cin,
 *       output [99:0] cout,
 *       output [99:0] sum );
 */
//==========================================================================================
module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign {cout,sum} = a + b+ cin;

endmodule

//================================================================

module top_module(
    input  [99:0] a, b,
    input         cin,
    output [99:0] cout,
    output [99:0] sum
);

    wire [99:0] carry;
    genvar i;

    generate
        for (i = 0; i < 100; i = i + 1) begin : adder_chain
            if (i == 0) begin
                full_adder fa (.a(a[i]),
                               .b(b[i]),
                               .cin(cin),
                               .sum(sum[i]),
                               .cout(carry[i]) );
            end
            else begin
                full_adder fa (.a(a[i]),
                               .b(b[i]),
                               .cin(carry[i-1]),
                               .sum(sum[i]),
                               .cout(carry[i]) );
            end
            assign cout[i] = carry[i];
        end
    endgenerate

endmodule
//==========================================================================================
