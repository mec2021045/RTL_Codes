module Bothedge_detectorTB();
reg CLK,D;
wire OUT;

BothedgeDetector DUT(D,CLK,OUT);
 initial 
 begin
 CLK=0;
 end
 always #2.5 CLK=~CLK;
  
  initial 
  begin
  #0
  D=0;
  #12
  D=1;
  #8.56
  D=0;
  
/* #3.6
    D=0;
    #4.5
    D=1;
    #5.5
      D=0;
      #6.5
      D=1;
      #8.5
        D=0;
        #9.5
        D=1;
        */
  end
  
  endmodule