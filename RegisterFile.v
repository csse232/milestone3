`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:32:03 10/21/2015 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
    input [2:0] writeReg,
    input [2:0] readReg1,
    input [2:0] readReg2,
    input [15:0] writeFile,
    input clock,
    input regWrite,
    output [15:0] readData1,
    output [15:0] readData2
    );
	 
reg [15:0] register [0:5/*This is an arbitrary value! TODO: Check what this should actually be*/];

always @ (posedge clock)
begin
  readData1 = register[readReg1];
  readData2 = register[readReg2];
  if (regWrite) begin
    register[writeReg] = writeFile;
  end
end
endmodule
