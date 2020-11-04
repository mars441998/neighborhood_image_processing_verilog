`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:44:42 06/25/2019
// Design Name:   cmtmod
// Module Name:   E:/6th Semester/VLSI Lab/CEP/CEP/cmt_test.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cmtmod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cmt_test;

	// Inputs
	reg CLK_IN1;

	// Outputs
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3;

	// Instantiate the Unit Under Test (UUT)
	cmtmod uut (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3)
	);

always #5 CLK_IN1 = ~CLK_IN1;

	initial begin
		// Initialize Inputs
		CLK_IN1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

