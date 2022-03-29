
module rca_tb;
reg [3:0] a, b;
reg cin;
wire [4:0] sum;

RCA dut (.x(a), .y(b), .cin(cin), .sum(sum));

integer i,j;
initial 
begin
a=4'b0; b=4'b0; cin = 1'b0;

for (i = 0; i<=15; i=i+1)
begin
    for (j=0; j<=15; j=j+1) 
        begin
         #10 b = b + 1'b1;
        end
    #10 a = a + 1'b1;
end

#10 cin = 1'b1;
for (i = 0; i<=15; i=i+1)
begin
    for (j=0; j<=15; j=j+1) 
        begin
         #10 b = b + 1'b1;
        end
    #10 a = a + 1'b1;    
end
 #30 $stop;
end
endmodule
