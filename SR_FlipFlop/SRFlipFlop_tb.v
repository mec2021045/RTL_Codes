`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 01:14:56 AM
// Design Name: 
// Module Name: SRFlipFlop_tb
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


module SRFlipFlop_tb(

    );
    reg S,R,CLK;
    wire Q;
    SRFlipFlop  DUT(S,R,CLK,Q);
     initial
     begin
     CLK=0;
     end
     
     always #5 CLK=~CLK;
     initial
      begin
    
      S<=0;R<=0;
      #7
       S<=0;R<=1;
        #10.658
       S<=1;R<=0;
        #10.1542
        S<=1;R<=1; 
        #20
        $finish;
      end
      initial
      $monitor("S=%b,R=%b,Q=%b",S,R,Q);
endmodule
