module dff #(parameter DELAY = 0)(
  input d,
  input clk,
  output q,
  output w
  );
  reg q, w;
  always @(posedge clk)
  begin
    w <= #DELAY d;
    q <= w; // nonblocking
  end
endmodule
