

module Mux_tb;
reg a,b,c,d;
reg [1:0] s;
wire y;
Mux41 uut (a,b,c,d,s,y);

initial begin
a=1'b0; b=1'b0; c=1'b0; d=1'b0;
end

always #5 a= ~a;
always #10 b= ~b;
always #20 c= ~c;
always #40 d= ~d;

initial begin
s = 2'b00;
#80  s = 2'b01;
#80  s = 2'b10;
#80  s = 2'b11;
#80  $stop;
end
    
endmodule
