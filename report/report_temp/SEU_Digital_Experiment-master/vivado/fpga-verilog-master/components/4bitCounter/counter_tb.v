

module counter_tb;
    reg clk, rst,ud;
    wire [3:0] count;
    counter_4bit dut (.clk(clk),.ud(ud), .rst(rst), .count(count));
    
    initial begin 
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
    	rst = 1'b1; 
	ud = 1'b1;
    	#30 rst =1'b0;
        #200 $stop;
	ud = 1'b0; 
        #250 rst = 1'b1;
        #30 $stop;
    end

endmodule
