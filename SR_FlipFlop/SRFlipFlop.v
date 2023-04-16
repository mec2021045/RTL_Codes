`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 01:15:45 AM
// Design Name: 
// Module Name: SRFlipFlop
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


module SRFlipFlop(S,R,CLK,Q);
input S,R,CLK;
output reg Q;
 always @(posedge CLK)
 case({S,R})
 2'b00:Q<=Q;
 2'b01:Q<=0;
 2'b10:Q<=1;
 2'b11:Q<=1'bx;
 endcase
 
 
endmodule
