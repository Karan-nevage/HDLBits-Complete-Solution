/*==========================================================================================
 * HDLBits Problem : Always_case (Case statement)
 * Category        : Verilog Language -> Procedures
 * Link            : https://hdlbits.01xz.net/wiki/Always_case
 * Author          : Karankumar Nevage (Fluxray Electronics)
 ==========================================================================================
 * Problem Statement:
 *   Case statements in Verilog are nearly equivalent to a sequence of if-elseif-
 *   else that compares one expression to a list of others. Its syntax and
 *   functionality differs from the switch statement in C.
 *
 *   Create a 6-to-1 multiplexer. When sel is between 0 and 5, choose the
 *   corresponding data input. Otherwise, output 0. The data inputs and outputs
 *   are all 4 bits wide. Be careful of inferring latches - make sure all
 *   outputs are assigned in all cases (use a default case).
 *------------------------------------------------------------------------------------------
 * Module Declaration:
 *   module top_module (
 *       input [2:0] sel,
 *       input [3:0] data0,
 *       input [3:0] data1,
 *       input [3:0] data2,
 *       input [3:0] data3,
 *       input [3:0] data4,
 *       input [3:0] data5,
 *       output reg [3:0] out );
 */
//==========================================================================================
// synthesis verilog_input_version verilog_2001
module top_module (
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            3'b000 : out = data0;
            3'b001 : out = data1;
            3'b010 : out = data2;
            3'b011 : out = data3;
			3'b100 : out = data4;
            3'b101 : out = data5;
			default: out = 4'b0000;
        endcase
    end

endmodule
//==========================================================================================
