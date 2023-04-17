module Upcounter_tb();
    reg clk,reset;
    wire[2:0]  count;
    
    Threebitupcounter DUT(clk,reset,count);
    initial 
    begin
    clk=0;
    reset=1;
    #10
    reset=0;
    end
    always #5 clk=~clk;
    
    /*initial 
    begin
    
    end
    */
    initial 
        begin
        $monitor("clk=%b,count=%b",clk,count);
        end
   
  endmodule 