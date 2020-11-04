`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:16 06/25/2019
// Design Name:   main
// Module Name:   E:/6th Semester/VLSI Lab/CEP/CEP/testbench.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk_in1;

	// Outputs
	wire clk_out1;
	wire clk_out2;
	wire clk_out3;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk_in1(clk_in1), 
		.clk_out1(clk_out1), 
		.clk_out2(clk_out2), 
		.clk_out3(clk_out3)
	);
initial
begin
clk_in1 = 0;
forever #50 clk_in1 = ~clk_in1;
end
	initial begin
		// Initialize Inputs
		clk_in1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

