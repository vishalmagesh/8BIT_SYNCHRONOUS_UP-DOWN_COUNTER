`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 11:36:51
// Design Name: 
// Module Name: Updowncounter_8bit
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


module Updowncounter_8bit(clk, rst, UpDwn, count);
input clk, rst;
input  UpDwn ; // UpDwn = 1 for Up counter and 0 for Down Counter
output [7:0] count;
reg [7:0] count = 0; // initially counter set to 0
 
always @ (posedge clk )
begin
if (rst)
count <= 0;
end

always @( posedge clk )
    begin
                        //Write the logic for 8-bit updown counter using if-else construct
        
        
        
    end
endmodule

