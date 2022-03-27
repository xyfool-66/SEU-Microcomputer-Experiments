

module counter_4bit(
    input clk, rst,ud,
    output reg [3:0] count
    );
    always @ (posedge clk)
    	if (rst)
        count <= 4'b0000;
    	else if(ud==1)
        count <= count+1'b1;
	else 
	count <= count -1'b1;
        
endmodule
