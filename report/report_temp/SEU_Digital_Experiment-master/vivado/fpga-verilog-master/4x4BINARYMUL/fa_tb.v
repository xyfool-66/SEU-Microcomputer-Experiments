module fa_tb();
reg a,b,cin;
wire s,cout;
fa uut(a,b,cin,s,cout);
initial begin
a=1'b0;b=1'b0;cin=1'b0;
#50 a=1'b0;b=1'b0;cin=1'b1;
#50 a=1'b0;b=1'b1;cin=1'b0;
#50 a=1'b0;b=1'b1;cin=1'b1;
#50 a=1'b1;b=1'b0;cin=1'b0;
#50 a=1'b1;b=1'b0;cin=1'b1;
#50 a=1'b1;b=1'b1;cin=1'b0;
#50 a=1'b1;b=1'b1;cin=1'b1;
end
endmodule