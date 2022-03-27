`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2021 07:15:32 AM
// Design Name: 
// Module Name: led
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


module led( input CLK, output reg[11:0] led_out );
reg [32:0] count = 0;
reg [32:0] n = 0;
parameter T1MS = 10000000;
always@(posedge CLK)
begin
    count <= count + 1;
    if (count == T1MS)
    begin
        count <= 0;
        led_out <= 12'b111111111111 << n;
        n <= n + 1;
        if (n == 13)
        begin
            n <= 0;
        end
    end
end
endmodule
