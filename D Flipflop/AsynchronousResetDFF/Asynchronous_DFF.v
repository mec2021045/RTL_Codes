`timescale 1ns / 1ps
module DFF_Asyn(input D,clk,reset,output reg Q);
 always @(posedge clk,posedge reset)
 begin
 if(reset)
 Q<=0;
 else
 Q<=D;
 end
 endmodule
