module alu_4(
    input [3:0]a,b,
    input [1:0]opcode,
    output reg [4:0]op);
	 
	always @ (opcode, a, b)
        case(opcode)
                    2'd0: op = a + b;
                    2'd1: op = a & b;
                    2'd2: op = a | b;
                    2'd3: op = a ^ b;
        endcase
endmodule

