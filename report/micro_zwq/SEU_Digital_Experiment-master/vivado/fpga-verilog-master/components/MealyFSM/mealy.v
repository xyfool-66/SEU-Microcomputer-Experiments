module mealy (input	clk, in_seq,rst,
output reg	seq_detected);

parameter S0=0, S1=1, S2=2, S3 =3, S4=4;
reg [2:0] currentstate, nextstate;

//to determine sequential memory

always @ (posedge clk)
begin
	if(rst)
		currentstate <= S0;
	else
		currentstate <= nextstate ;
end

//to determine next state and output

always @ (currentstate, in_seq)
begin
	case (currentstate)
	S0: begin
	       seq_detected	= 0;
	       nextstate 	= in_seq? S1 : S0;
	    end
	S1:  begin
	       seq_detected	= 0;
	       nextstate 	= in_seq? S2 : S0;
     end
	S2:  begin
	       seq_detected	= 0;
	       nextstate  	= in_seq? S3 : S0;
            end
	S3:  begin
	       seq_detected	= 0;
	       nextstate 	= in_seq? S3 : S4;
	    end
	S4:  begin
	       seq_detected	<= in_seq? 1 : 0;
	       nextstate 	<= in_seq? S1 : S0;
	     end
	default: begin
	       	seq_detected	<= 0;
		nextstate <= S0;
		end
	endcase
    end

endmodule