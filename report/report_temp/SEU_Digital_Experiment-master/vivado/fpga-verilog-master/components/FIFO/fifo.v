module FIFO #(parameter n=8)
(input clk,rst,push,pop,
input [n-1:0]din,
output reg full,empty,
output reg [n-1:0]dout);
reg [n-1:0]mem[2*n-1:0];
reg [n/2:0]rd,wr;
//integer i;
	always @(posedge clk)
	begin
	if(rst)
	begin
		rd<=0;
		wr<=0;
		empty<=1;
		full<=0;
	end
	else if (rd==2*n && wr==2*n)
	begin
		empty<=1;
		full<=0;
		wr<=0;
		rd<=0;
	end
	else
	begin
		case({pop,push}) //read,write
		2'd0: mem[wr]<=mem[wr];
		2'd1: begin
			empty<=0;
			if (full)
			begin
				//full<=0;
				wr<=0;
		      	end
			else if(wr==2*n)
				full<=1;
			else
			begin
				mem[wr]<=din;
				wr<=wr+1;
			end
		      end
		2'd2: begin
			full<=0;
			if(empty)
				rd<=0;
			else if (rd==2*n)
			begin
				empty<=1;
			end
			else
			begin
				dout<=mem[rd];
				rd<=rd+1;
			end
		     end
		2'd3: begin
			if(wr==2*n)
			begin
				full<=1;
				empty<=0;
				wr<=wr;
				dout<=mem[rd];
				rd<=rd+1;
			end
			else if (rd==2*n)
			begin
				empty<=1;
				full<=0;
				rd<=rd;
				mem[wr]<=din;
				wr<=wr+1;
			end
			else
			begin
				empty<=0;
				full<=0;
				dout<=mem[rd];
				rd<=rd+1;
				mem[wr]<=din;
				wr<=wr+1;
			end
		      end
		endcase
	end
	end
endmodule