`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute Of Information Technology  Allahabad UP
// Engineer: RajuKumarYadav
// 
// Create Date: 04/17/2023 12:35:52 AM
// Design Name: 
// Module Name: DFFtoJKFF_TB
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


module DFFtoJKFF_TB( );
    reg J,K,CLK;
    wire Q;
    DFFtoJKFF DUT(J,K,CLK,Q);
    initial 
    begin
    CLK=0;
    end
    always #2.5 CLK=~CLK;
    initial
    begin
    J<=0;K<=0;
      #7
       J<=0;K<=1;
        #10.658
       J<=1;K<=0;
        #10.1542
        J<=1;K<=1; 
        #20
        $finish;
      end
      initial
      $monitor("J=%b,K=%b,Q=%b",J,K,Q);
endmodule
