`timescale 1ns / 100ps 
module cl01( 
  input [2:0] in, 
  output S1,S2,S3, 
  output out 
); // GATE model
  // wire S0,S1,S2,S3; 
  and #1 U1(S1,in[0],in[1]); 
  or #2 U2(S2,S1,in[2]); 
  not #3 U3(S3,S2); 
  assign out=S3; 
endmodule
