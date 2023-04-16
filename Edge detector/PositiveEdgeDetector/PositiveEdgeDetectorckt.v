module edgeDetector(D,CLK,OUT);
input D,CLK;
output OUT;
reg Q;
always @(posedge CLK)
begin 
Q<=D;
end

assign OUT =D&~Q;
endmodule