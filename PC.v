`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:52 10/19/2015 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [15:0] in,
    output [15:0] out,
    input clock,
    input PCWrite
    );
initial out = 0;
always @ (posedge clock)
begin
	if(PCWrite==1)
	begin
		pc_out = pc_in;
	end
end
endmodule
