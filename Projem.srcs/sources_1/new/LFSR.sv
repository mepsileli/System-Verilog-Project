`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 08:33:46 PM
// Design Name: 
// Module Name: LFSR
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


module LFSR(
input clock,
input reset,
output logic [15:0]number 
);

//logic [15:0]number;
logic fb;

assign fb = ~( number[15] ^ number[14] ^ number[13] ^ number[12] ^ number[10] ^ number[7] ^ number[8]);

always @(posedge clock)
begin
if(reset)
number = 0;

else
number <= {number[14:0],fb};
end

//assign out = number[3:0];

endmodule
