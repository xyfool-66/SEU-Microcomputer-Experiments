module x74x138(g1,g2,g3,a,y); // define model for 74138
input g1,g2,g3; 
input [2:0] a; 
output [7:0] y; // declare output variable
reg [7:0] y=0; // in declaration it should be 'reg'
 
  always @ * 
  begin 
    if(g1 && ~g2 && ~g3) // gate terminal
      case(a) 
      7: y= 8'b01111111; 
      6: y= 8'b10111111; 
      5: y= 8'b11011111; 
      4: y= 8'b11101111; 
      3: y= 8'b11110111; 
      2: y= 8'b11111011; 
      1: y= 8'b11111101; 
      0: y= 8'b11111110; 
      default: y= 8'b11111111; 
      endcase 
    else 
    y= 8'b11111111; 
  end 
endmodule
