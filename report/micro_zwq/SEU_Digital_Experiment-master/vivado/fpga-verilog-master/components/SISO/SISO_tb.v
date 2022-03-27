

module SISO_tb;
    reg clk, sin;
    wire sout;
    
    SISO dut (.clk(clk), .sin(sin), .sout(sout));
    
    initial begin 
            clk = 1'b0;
            forever #5 clk = ~clk;
        end
        
        initial begin
   	sin = 1'b1; 
	#10 sin=1'b0;
        #100 $stop;
        end

endmodule
