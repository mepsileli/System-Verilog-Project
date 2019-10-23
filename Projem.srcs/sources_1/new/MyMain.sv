`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 09:19:54 PM
// Design Name: 
// Module Name: MyMain
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


module MyMain(
input clock,
input reset,
input [3:0]keyb_col,
input start,
inout [3:0]keyb_row,
output [3:0]phases,
output a, b, c, d, e, f, g, dp, 
output [3:0] an
    );

logic [3:0] mykey;

logic key_valid;

logic [15:0]random16;

logic [3:0]random_num;

logic [3:0] key_value;

logic [1:0]direction;

logic [1:0]rotation_duration;

logic [3:0]score;

logic newStart;

logic [3:0]registeredValue;

assign newStart = (start | key_valid);

LFSR lfsr(clock,reset,random16);
Register register(clock, reset, key_valid, random_num, registeredValue);
keypad4X4 keypad(clock, keyb_row, keyb_col, key_value, key_valid);
DirDur dd(clock,start,key_valid,registeredValue,random16,random_num,direction,rotation_duration);
Mapper mapper(key_value, mykey);
SevSeg_4digit ss(clock,score,registeredValue,0,0, a, b, c, d, e, f, g, dp, an);
steppermotor_wrapper sw(clock,direction,rotation_duration,phases,newStart);

always@(posedge clock)
begin      
    if (reset)
        score = 4'b0000; 
        
    else if(key_valid)
         begin
              if(registeredValue== mykey)
              begin
                if(score != 9)
                   score = score + 1;
                else
                score = 0;
              end
              else if (registeredValue != mykey && score > 0)
                   score = score - 1;
         end
end
endmodule
