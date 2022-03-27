module ff273v (din, clk, clr, dout);
  input [7:0] din;
  input clk, clr;
  output [7:0] dout;
  reg [7:0] dout;
  reg [7:0] dinn,dins;
  always @(posedge clk or negedge clr)
  begin
  if (!clr)
    dout <= 8'b00000000;
  else
    begin
      dout<=din;
    end
  end
endmodule
