`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 12:00:35 PM
// Design Name: 
// Module Name: 
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


module Threebitupcounter(clk,reset,count

    );
    input clk,reset;
    output reg[2:0] count;
       always @(posedge clk)
    begin
    if(reset)
    count<=0;
    else
    count<=count+1;
    end
    
endmodule
