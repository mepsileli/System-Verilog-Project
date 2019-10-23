`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 08:46:54 PM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
input clock,
input reset,
input registeredRandom,
input mykey,
input key_valid,
output logic [3:0]score 
);

always @(posedge clock)
begin
if (reset)
    score = 4'b0000; 
    
        if(key_valid)
        begin
           if(registeredRandom == mykey)
               score = score + 1;
           else if (registeredRandom != mykey)
           begin
           if (score >0)
               score = score - 1;
               else
               score = score;
           end
        end   
end 
endmodule
