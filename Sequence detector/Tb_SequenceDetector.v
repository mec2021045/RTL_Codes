`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 11:56:15 PM
// Design Name: 
// Module Name: Tb_SequenceDetector
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


module Tb_SequenceDetector(

    );
    reg reset,clk,in;
    wire out;
    EdgeDetectorCkt h1(clk,reset,in,out);
     initial
     begin
     clk=1'b0;
     end
     always #5 clk=~clk;
      initial
         begin
         reset=1'b1;
         #5
         reset=1'b0;
         in=1'b0;
         #3 in=1'b1;
         #5 in=1'b0;
         #3 in=1'b1;
         #5 in=1'b0;
         #5 in=1'b0;
         
         #3 in=1'b1;
         #5 in=1'b0;
         #3 in=1'b1;
         #5 in=1'b0;
         #5 in=1'b0;
         end
         
        
     
    
endmodule
