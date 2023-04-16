`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RajuKumarYadav
// 
// Create Date: 04/17/2023 12:22:08 AM
// Design Name: 
// Module Name: DFFtoJKFF
// Project Name: FlipFlopConversion
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


module DFFtoJKFF(J,K,CLK,Q);

input J,K,CLK;
output reg Q;
  wire D;
  assign D=J&~Q|~K&Q;
  always @(posedge CLK)
  begin
  Q<=D;
  end  
endmodule
