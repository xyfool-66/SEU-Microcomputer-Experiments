`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2020 07:13:37
// Design Name: 
// Module Name: rca
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


module rca(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire c0,c1,c2;
fa f1(a[0],b[0],cin,sum[0],c0);
fa f2(a[1],b[1],c0,sum[1],c1);
fa f3(a[2],b[2],c1,sum[2],c2);
fa f4(a[3],b[3],c2,sum[3],cout);
endmodule
