module test;
reg clk,rst,push,pop;
reg [7:0]din;
wire full,empty;
wire [7:0]dout;

FIFO uut (clk,rst,push,pop,din,full,empty,dout);

initial begin
clk = 1'b0;
forever  #5 clk=~clk;
end
reg [4:0] i;
initial begin
rst = 1'b1; push = 1'b1; pop = 1'b0; din = 8'd50;
 #40 rst = 1'b0; 
 for (i=0; i<19; i=i+1)
    begin
    din = $urandom;
    #10;
    end
  pop=1'b1; push = 1'b0;
  #190 push = 1'b1;
  din = 8'd255;
  #40 $stop;
  #10 pop = 1'b0;  
  for (i=0; i<6; i=i+1)
     begin
       din = $urandom;
       #10;
     end
  pop=1'b1; push = 1'b0;
  #40 push = 1'b1; pop=1'b0;
  din = 8'd255;
  #40 $stop;
  
  end
   
endmodule