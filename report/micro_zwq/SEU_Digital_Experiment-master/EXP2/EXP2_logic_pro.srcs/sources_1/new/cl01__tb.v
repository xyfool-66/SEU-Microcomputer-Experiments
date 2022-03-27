module cl01_pro_tb(input [2:0] in, output out1); // testbench file
  reg xin; // Only in0 works, while in1 as 1 and in2 as 0
  wire out;
  wire [2:0] s; 
  cl01_pro DUT(.in(xin),.S1(s[0]),.S2(s[1]), .S3(s[2]), .out(out)
  );

  assign out1=out;
  initial begin
    #1 xin=0;
  end
  always @ * begin
    xin=out;// feedback from S3 to in0
  end
endmodule
