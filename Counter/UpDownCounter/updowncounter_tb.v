module Threebitupdowncounter_tb();
    reg clk,reset,mode;
    wire  out;
    //reg mode;
    Threebitupdowncounter DUT(mode,clk,out,reset);
    initial 
        begin
        clk=0;
        end
        always #5 clk=~clk;
        
        initial 
        begin
         reset = 0;
               mode = 0;
               #300;
               mode = 1;
             #300;
               reset = 1;
               mode = 0;
               #100;
               reset = 0; 
               end
        initial 
            
            $monitor("clk=%b,out=%b",clk,out);
            
    
   
  endmodule  