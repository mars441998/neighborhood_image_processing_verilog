`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:23 06/25/2019 
// Design Name: 
// Module Name:    main 
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
module main(input clk_in1, output clk_out1, output clk_out2, output clk_out3);
 
 wire clk_in1;
 wire clk_out1;
 wire clk_out2;
 wire clk_out3;
 
 reg CLK_S;
 
 
	 my_bram8x8 bram_v (
  .clka(clk_out1), // input clka
  .wea(wea), // input [0 : 0] wea
  .addra(addra), // input [10 : 0] addra
  .dina(dina), // input [7 : 0] dina
  .clkb(CLK_S), // input clkb
  .addrb(addrb), // input [8 : 0] addrb
  .doutb(doutb) // output [31 : 0] doutb
);

/* clock cmt
   (// Clock in ports
    .CLK_IN1(clk_in1),      // IN
    // Clock out ports
    .CLK_OUT1(clk_out1),     // OUT
    .CLK_OUT2(clk_out2),     // OUT
    .CLK_OUT3(clk_out3),     // OUT
    // Status and control signals
    .RESET(RESET),// IN
    .LOCKED(LOCKED)); */
	 
	 cmtmod cmt1
   (// Clock in ports
    .CLK_IN1(clk_in1),      // IN
    // Clock out ports
    .CLK_OUT1(clk_out1),     // OUT
    .CLK_OUT2(clk_out2),     // OUT
    .CLK_OUT3(clk_out3)
	 );
	 

wire clk_in1_neg;

assign clk_in1_neg = !clk_in1;

always @(posedge clk_in1 or negedge clk_in1_neg)
begin
if(clk_in1)
CLK_S = clk_out2;
else
CLK_S = clk_out3;
end

endmodule
