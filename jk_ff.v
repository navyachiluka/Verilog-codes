`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 19:00:36
// Design Name: 
// Module Name: jk_ff
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

module jk_ff(
input clk,j,k,rst,
output reg q);
initial begin
if(rst)
q<=1'b0;
end
always@(posedge clk)
begin
case({j,k})
2'b00:begin q=q;end
2'b01:begin q=1'b0;end
2'b01:begin q=1'b1;end
2'b11:begin q=~q;end
endcase
end
endmodule
