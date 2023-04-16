module Positiveedge_detectorTB();
reg CLK,D;
wire OUT;
edgeDetector DUT(D,CLK,OUT);
 initial 
 begin
 CLK=0;
 end
 always #5 CLK=~CLK;
  
  initial 
  begin
   #0
  D=0;
  #12.45879
  D=1;
  #8.56
  D=0;
  
  #8.2548
    D=1;
    #8.56
    D=0;
    #4.5698
      D=1;
      #8.56
      D=0;
  end
  
  endmodule