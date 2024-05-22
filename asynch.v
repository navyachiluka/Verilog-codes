`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 18:48:34
// Design Name: 
// Module Name: asynch
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


module asynch(
input clk,rst,
output Q0,Q1,Q2,Q3);
jk_ff g1(clk,1'b1,1'b1,rst,Q0);
jk_ff g2(Q0,1'b1,1'b1,rst,Q1);
jk_ff g3(Q1,1'b1,1'b1,rst,Q2);
jk_ff g4(Q2,1'b1,1'b1,rst,Q3);
endmodule
