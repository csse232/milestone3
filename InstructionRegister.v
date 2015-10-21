`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:50 10/19/2015 
// Design Name: 
// Module Name:    InstructionRegister 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionRegister(
    input [15:0] IR_in,
    input clock,
    input [15:0] IR_out,
    input IRWrite,
	 output [3:0] op, funk,
	 output [2:0] rd, rs, rt,
	 output [5:0] iImm,
	 output [11:0] jImm
    );
initial IR_in = 0;
always @ (posedge clock)
begin
	if (IRWrite) begin
		opcode = IR_in[15:12];
		rd = IR_in[11:9];
		rs = IR_in [8:6];
		rt = IR_in [5:3];
		funk = IR_in [2:0];
		
		iImm = IR_in [5:0]; //for the I-type immediate
		
		jImm = IR_in [11:0]; //for the J-type immediate
	end
end
endmodule
