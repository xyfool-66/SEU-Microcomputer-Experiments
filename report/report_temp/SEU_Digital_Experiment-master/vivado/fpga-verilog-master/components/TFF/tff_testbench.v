
module tff_tb;
reg clk, reset, t;
wire q;
 tff dut (.clk(clk), .t(t), .rst (reset), .q(q));
 
 initial clk = 1'b0;
 always #5 clk = ~clk; // clock generation
 
 initial begin
  reset = 1'b1;
  t = 1'b1;
  #20 reset = 1'b0; 
  #50 t = 1'b0;
  #30 reset = 1'b1;
  #30 $stop;
  end
 
endmodule

