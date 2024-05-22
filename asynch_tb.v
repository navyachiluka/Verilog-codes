`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 21:11:21
// Design Name: 
// Module Name: asynch_tb
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


module asynch_tb;
reg clk,rst;
wire Q0,Q1,Q2,Q3;
asynch uut(
.clk(clk),
.rst(rst),
.Q0(Q0),
.Q1(Q1),
.Q2(Q2),
.Q3(Q3));
initial 
begin 
clk=0;
rst=1'b1;
forever #5 clk=~clk;
end
initial begin
#5 rst=1'b0;
#5 rst=1'b1;
#100 $finish();
end
endmodule
