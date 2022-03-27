module CD4511( a, b, c, d, e, f, g, D, C, B, A , LTbarr, BIbarr, LE ); // BCD -> 7 segments

output a, b, c, d, e, f, g;
input D, C, B, A;
input LTbarr, BIbarr, LE;
reg  [6:0] SevenSegments;

always @(*)

if ( LTbarr == 0 )
begin
    SevenSegments = 8'b11111111;	
end
else 
begin
	if ( BIbarr == 0 )
	begin
		SevenSegments = 8'b00000000;	
	end
	else if(( BIbarr == 1 ) && ( LTbarr == 1 ) && ( LE == 0))
	begin
		case({D, C, B, A})
			4'b0000: SevenSegments = 7'b1111110;
			4'b0001: SevenSegments = 7'b0110000;
			4'b0010: SevenSegments = 7'b1101101;
			4'b0011: SevenSegments = 7'b1111001;
			4'b0100: SevenSegments = 7'b0110011;
			4'b0101: SevenSegments = 7'b1011011;
			4'b0110: SevenSegments = 7'b0011111;
			4'b0111: SevenSegments = 7'b1110000;
			4'b1000: SevenSegments = 7'b1111111;
			4'b1001: SevenSegments = 7'b1110011;
			default: SevenSegments = 7'b0000000;
		endcase
	end
end

assign {a, b, c, d, e, f, g} = SevenSegments;

endmodule

// Reference: https://www.embarcados.com.br/tutorial-de-verilog-conversor-bcd-para-7-segmentos/
