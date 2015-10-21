`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:50:40 10/21/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] in1,
    input [15:0] in2,
    input [2:0] control,
    input clock,
    input result
    );

always @ (posedge clock)
begin
	case(control)
	/*and*/0: result = a & b;
	/*or*/1: result = a | b;
	/*add*/2: result = a + b;
	/*sub*/3: result = a - b;
	/*sl*/4: result = a << b;//signed?
	/*sr*/5: result = a >> b;
	/*slt*/6: result = (a - b < 0) ? 	1 : 0;
	endcase
end

endmodule
