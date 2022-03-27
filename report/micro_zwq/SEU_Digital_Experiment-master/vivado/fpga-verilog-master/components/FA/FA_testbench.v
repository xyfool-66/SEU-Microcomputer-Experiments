
module FA_testbench;
    reg a,b,cin;
    wire sum, cout;

    FA dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
     	a = 1'b0; 
	b=1'b0; 
	cin= 1'b0;	//000
     #100 cin= 1'b1;	//001
     #100 b=1'b1; cin= 1'b0;	//010
     #100 cin= 1'b1; //011
     #100 a = 1'b1; b=1'b0; cin= 1'b0; //100
     #100 cin= 1'b1;	//101
     #100 b=1'b1; cin= 1'b0;	//110
     #100 cin= 1'b1;	//111
    end
endmodule
