module Threebitupdowncounter(mode,clk,out,reset);
    input clk,reset,mode;
    output reg [2:0] out;
    //reg mode;
    always @(posedge clk)
    begin
    if(reset)
    out<=3'b000;
    else
    if(mode)
    out<=out+1;
    else
    out<=out-1;
    end
  endmodule  
