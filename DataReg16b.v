`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:51 10/19/2015 
// Design Name: 
// Module Name:    DataReg16b 
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
module DataReg16b(
    input [15:0] data_in,
	 input clock,
    output reg [15:0] data_out
    );
always @ (posedge clock)
begin
	data_out = data_in;
end

endmodule
