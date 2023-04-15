`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 01:06:55 AM
// Design Name: 
// Module Name: D FlipFlopSyncronousReset
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


module D_FlipFlopSyncronousReset(input D,reset,CLK,output reg Q);
    always @(posedge CLK)
    begin
    if (reset)
    Q<=1'b0;
    else
    Q<=D; 
    end
endmodule