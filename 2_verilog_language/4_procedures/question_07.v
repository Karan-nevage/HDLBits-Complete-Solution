/*==========================================================================================
 * HDLBits Problem : Always_casez (Priority encoder with casez)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Always_casez
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Build a priority encoder for 8-bit inputs. Given an 8-bit vector, the output
 *   should report the first (least significant) bit in the vector that is 1.
 *   Report zero if the input vector has no bits that are high. For example, the
 *   input 8'b10010000 should output 3'd4, because bit[4] is the first bit high.
 *
 *   A case statement that must check many bit patterns would be tedious. The
 *   casez statement treats bits that have the value z as don't-care in the
 *   comparison, which lets us compare only the relevant bits. For example, the
 *   pattern 8'bzzzzzzz1 matches any input whose least significant bit is 1.
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [7:0] in,
 *       output reg [2:0] pos );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );

    always @(*) begin
        casez (in)
        8'bzzzz_zzz1: pos = 0;
		8'bzzzz_zz1z: pos = 1;
        8'bzzzz_z1zz: pos = 2;
        8'bzzzz_1zzz: pos = 3;
        8'bzzz1_zzzz: pos = 4;
		8'bzz1z_zzzz: pos = 5;
        8'bz1zz_zzzz: pos = 6;
        8'b1zzz_zzzz: pos = 7;

        default: pos = 0;
    endcase
end
endmodule
//==========================================================================================
