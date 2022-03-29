`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2020 07:13:37
// Design Name: 
// Module Name: fa
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


module fa(
    input a,b,cin,
    output s, cout
    );
    assign s=(a^b^cin);
assign cout=((a^b)*cin)|(a&b);
endmodule
