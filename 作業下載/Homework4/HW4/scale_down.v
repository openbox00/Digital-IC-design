`timescale 1ns/10ps
module scale_down(
					clk, reset, in, 	//input
					out, display, ask);	//output
input	clk, reset;
input   [7:0] in;
output  [7:0] out;
output	display;
output  ask;


endmodule
