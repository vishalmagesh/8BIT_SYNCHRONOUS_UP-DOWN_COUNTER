`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 11:50:44
// Design Name: 
// Module Name: Updowncounter_Test
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


module Updowncounter_Test();
reg clk, rst;
reg  UpDwn ;
wire [7:0] count;
Updowncounter_8bit dut(.clk(clk), .rst(rst), .UpDwn(UpDwn), .count(count));
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1;
#10 rst=0;
UpDwn=1;
#300 UpDwn=0;
end
endmodule
