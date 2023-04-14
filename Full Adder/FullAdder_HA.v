`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 12:58:02 AM
// Design Name: 
// Module Name: FullAdder_HA
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

/*
module FullAdder_HA(input A,B,Cin,output Sum,Carry

    );
    wire T1,T2,T3;
    assign T1=A^B;
    assign T2=A&B;
    
    assign Sum=T1^Cin;
    assign T3=T1&Cin;
    
    assign Carry=T3|T2;
    
    
    
    
    
    
endmodule
*/
module HA(input A,B, output S,C);
assign S=A^B;
assign C=A&B;
endmodule

module Full_Adder_HA(input a,b,c, output sum,carry);
wire T1,T2,T3;
HA A1(a,b,T1,T2);
HA A2(T1,c,sum,T3);
assign carry=T2|T3;

endmodule