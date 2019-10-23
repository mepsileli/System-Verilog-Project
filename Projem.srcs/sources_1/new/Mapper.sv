`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 09:15:54 PM
// Design Name: 
// Module Name: Mapper
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


module Mapper(
input logic [3:0]key_value,
output logic [3:0]mykey );

always_comb
case(key_value)

0 : mykey <= 4'b0010;
1 : mykey <= 4'b1010;
2 : mykey <= 4'b0101;
3 : mykey <= 4'b1110;
4 : mykey <= 4'b0111;
5 : mykey <= 4'b0000;
6 : mykey <= 4'b0100;
7 : mykey <= 4'b0011;
8 : mykey <= 4'b1111;
9 : mykey <= 4'b0110;
10 : mykey <= 4'b1000;
11 : mykey <= 4'b1101;
12 : mykey <= 4'b1001;
13 : mykey <= 4'b1100;
14 : mykey <= 4'b0001;
15 : mykey <= 4'b1011;
default : mykey <= 4'b0011;
endcase

endmodule
