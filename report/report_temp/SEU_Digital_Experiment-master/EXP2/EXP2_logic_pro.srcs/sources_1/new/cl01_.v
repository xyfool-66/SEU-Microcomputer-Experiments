`timescale 1ns / 100ps 
module cl01_pro( 
  input in, // in0 only
  output S1,S2,S3,
  output out
); // GATE model
  // wire S0,S1,S2,S3;
  and #1 U1(S1,in,1); // in1=1
  or  #2 U2(S2,S1,0); // in2=0
  not #3 U3(S3,S2);
  assign out=S3;
endmodule
