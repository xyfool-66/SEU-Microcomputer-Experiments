

module moore(
input	clk, in_seq,rst,
output reg	seq_detected);

parameter S0=0, S1=1, S2=2, S3 =3, S4=4, S5=5;
reg [2:0] currentstate,nextstate;

//to determine sequential memory

always @ (posedge clk)
begin
	if(rst)
	currentstate<=S0;
	else
	currentstate<= nextstate;
end

//to determine next state

always @ (currentstate, in_seq)
begin
	case (currentstate)
	S0:  nextstate <= in_seq? S1 : S0;
	S1:  nextstate <= in_seq? S2 : S0;
	S2:  nextstate <= in_seq? S3 : S0;
	S3:  nextstate <= in_seq? S3 : S4;
	S4:  nextstate <= in_seq? S5 : S0;
	S5:  nextstate <= in_seq? S1 : S0;
	default:nextstate <= S0;
	endcase
end
// output assignment which depends only on current state
always @ (currentstate)
        case(currentstate)
        S0: seq_detected	<= 0;
        S1: seq_detected	<= 0;
        S2: seq_detected	<= 0;
        S3: seq_detected	<= 0;
        S4: seq_detected	<= 0;
        S5: seq_detected	<= 1;
	default: seq_detected	<= 0;
	endcase
endmodule
