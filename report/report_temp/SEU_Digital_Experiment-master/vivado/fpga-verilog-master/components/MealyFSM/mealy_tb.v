module mealy_tb;
reg	clk, in, rst;
wire	seq_detected;

mealy dut (.clk(clk),.rst(rst), .in_seq(in), .seq_detected(seq_detected));

initial 
begin
    clk = 1'b0;
    forever #5 clk=~clk;
end

//sequence given 11110100110110011101111010000
initial begin

    rst = 1'b1;
     in = 1'b1;
	 #40	in = 1'b0;
	 #10	in = 1'b1; 
	 #10	in = 1'b0;
	 #20	in = 1'b1;
	 #20	in = 1'b0; 
	 #10	in = 1'b1;
	 #20	in = 1'b0; 	 
	 #20	in = 1'b1;
	 #30	in = 1'b0;
         #10	in = 1'b1;
	 #40	in = 1'b0;
	 #10	in = 1'b1; 
	 #10	in = 1'b0;	 
    #50 $stop;
    rst=1'b0;
    in = 1'b1;
    #40    in = 1'b0;
    #10    in = 1'b1; 
    #10    in = 1'b0;
    #20    in = 1'b1;
    #20    in = 1'b0; 
    #10    in = 1'b1;
    #20    in = 1'b0;      
    #20    in = 1'b1;
    #30    in = 1'b0;
    #10    in = 1'b1;
    #40    in = 1'b0;
    #10    in = 1'b1; 
    #10    in = 1'b0;     
   #50 $stop;
   in = 1'b1;
   #40    in = 1'b0;
          rst = 1'b1;
   #10    in = 1'b1; 
   #10    in = 1'b0;
   #20    in = 1'b1;
   #20    in = 1'b0; 
   #10    in = 1'b1;
   #20    in = 1'b0;  
   #50 $stop;
end
endmodule
