
module alu_4_tb;
    reg [3:0]a,b;
    reg [1:0]opcode;
    wire [4:0]op;

alu_4 uut (a,b,opcode,op);

initial 
begin
a=4'b0; b=4'b0; opcode = 2'b0;
#10.5467 
$display("At time %f for a = %b and b = %b for opcode = %d Output is %d", $realtime,a,b, opcode, op);
#10 a=4'b1111; b=4'b1111; opcode = 2'b0;
#10 $stop;
#10 a=4'b0100; b=4'b1101; opcode = 2'b0;
#10 a=4'b0100; b=4'b1101; opcode = 2'b01;
#10 a=4'b0100; b=4'b1101; opcode = 2'b10;
#10 a=4'b0100; b=4'b1101; opcode = 2'b11;
#10 $stop;
end

/*
integer i,j;
initial begin
a=4'b0; b=4'b0; opcode = 2'b0;
    for (j=0; j<4; j=j+1)
    begin
	for (i=0; i<5; i=i+1)
	begin
		a=$urandom%16;
		#10
		b=$urandom%16;
	end
    #10 opcode= opcode+1;
    end
 #10 $stop;
end
*/

initial 
$monitor ("Monitor message At time %f for a = %b and b = %b for opcode = %d Output is %d", $realtime,a,b, opcode, op);

endmodule

