`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2020 07:20:59
// Design Name: 
// Module Name: rca_tb
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


module rca_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
rca uut(a,b,cin,sum,cout);
integer i,j;
initial begin
a=4'b1111;b=4'b1111;cin=1'b0;
for(j=0;j<4;j=j+1)
begin
for(i=0;i<5;i=i+1)
begin
a=$urandom%16;
#50
b=$urandom%16;
end
end
end
endmodule
