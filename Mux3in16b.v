`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:39:56 10/21/2015 
// Design Name: 
// Module Name:    Mux4in16b 
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
module Mux3in16b(
   input [15:0] in1,
    input [15:0] in2,
	 input [15:0] in3,
    input [1:0] control,
    input clock,
    output [15:0] out
    );
always @ (posedge clock)

begin
	//out = (control == 0) ? in1 : in2;
	case(control)
		0:out = in1;
		1:out = in2;
		2:out = in3;
	endcase
end

endmodule