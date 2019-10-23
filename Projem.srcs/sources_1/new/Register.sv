`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 09:52:04 PM
// Design Name: 
// Module Name: Register
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


module Register(
input clock,
input reset,
input load,
input [3:0]randomNumber,
output logic [3:0]registeredValue);
    
always @(posedge clock)
begin
if(reset)
registeredValue <= 0;
else if(load)
registeredValue <= randomNumber;
end

endmodule
