module JKFF_TB();
reg J,K,CLK;
wire Q;
JKFF  DUT(J,K,CLK,Q);
 initial
 begin
 CLK=0;
 end
 
 always #5 CLK=~CLK;
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