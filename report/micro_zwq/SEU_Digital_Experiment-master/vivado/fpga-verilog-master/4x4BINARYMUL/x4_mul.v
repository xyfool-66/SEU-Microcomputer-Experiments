`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2020 07:13:37
// Design Name: 
// Module Name: 4x4_mul
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


module x4_mul(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
    );
    wire [3:0]x;
 wire [3:0]y;
wire [4:0]s;
wire [3:0]z;
wire [4:0]t;
wire [3:0]r;
assign p[0]=a[0]&b[0];
assign p[1]=s[0];
assign p[2]=t[0];
assign x[0]=a[1]&b[0];
assign x[1]=a[2]&b[0];
assign x[2]=a[3]&b[0];
assign x[3]=1'b0;
assign y[0]=a[0]&b[1];
assign y[1]=a[1]&b[1];
assign y[2]=a[2]&b[1];
assign y[3]=a[3]&b[1];
assign z[0]=a[0]&b[2];
assign z[1]=a[1]&b[2];
assign z[2]=a[2]&b[2];
assign z[3]=a[3]&b[2];
assign r[0]=a[0]&b[3];
assign r[1]=a[1]&b[3];
assign r[2]=a[2]&b[3];
assign r[3]=a[3]&b[3];
 rca r1(x[3:0],y[3:0],0,s[3:0],s[4]);
rca r2(s[4:1],z[3:0],0,t[3:0],t[4]);
rca r3(t[4:1],r[3:0],0,p[6:3],p[7]);
endmodule
