module cl01_tb(input [2:0] in, output out1); // testbench file
 reg [2:0] xin; 
 wire out; 
 wire [2:0] s; 
 cl01 DUT(.in(xin),.S1(s[0]),.S2(s[1]), .S3(s[2]), .out(out)); 

assign out1=out; 
initial 
  begin 
    #10 xin = 0; 
    #10 xin = 1; 
    #10 xin = 2; 
    #10 xin = 3; 
    #10 xin = 4; 
    #10 xin = 5; 
    #10 xin = 6; 
    #10 xin = 7; 
    #10 xin = 0; 
    #10; 
  end
endmodule
