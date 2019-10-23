`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 08:57:42 PM
// Design Name: 
// Module Name: Dir-Dur
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


module DirDur(
input clock,
input start,
input key_valid,
input [3:0]registeredValue,
input [3:0]random16,
output logic [3:0]random_num,
output logic direction,
output logic rotation_duration
);

always @(posedge clock)
begin
    if(start)
        begin
        random_num = random16[3:0];
        rotation_duration <= registeredValue[1:0];
        direction <= registeredValue[3:2];
        end

    else if(key_valid)
        begin
        random_num = random16[3:0];
        direction <= random_num[3:2];
        rotation_duration <= random_num[1:0];
        end
end
endmodule
