`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 07:25:00 PM
// Design Name: 
// Module Name: Tb_LFSR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Tb_LFSR();
logic clk,reset;
logic [3:0]out;

LFSR m(clk,reset,out);

initial begin
clk=0; reset=1; #10;
reset =0; #10;
end

always 
#10 clk = ~clk;

endmodule
