`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2023 10:59:20 AM
// Design Name: 
// Module Name: EdgeDetectorCkt
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


module EdgeDetectorCkt(input clk,reset,in, output reg out);

parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

 reg [1:0] CS,NS;
  always @ (posedge clk)
  if(reset)
  CS<=0;
  else
  CS<=NS;
 
  always @(*)
  case(CS)
  S0: begin NS=in?S1:S0; 
  out<=0; end
  S1: begin NS=in?S1:S2;
   out<=0; end
  S2: begin NS=in?S3:S2; 
  out<=0; end
  S3: begin NS=in? S1:S2;
 // out<=in?; end
 out<=in?S2:S1;
 end
  
//  default: begin NS=2'b00; out=1'b0; end
  
  endcase

endmodule
    
     

