module x4_mul_tb(
);
reg [3:0]a,b;
wire [7:0]p;
x4_mul uut(a,b,p);
integer i,j;
initial begin
a=4'b0000;b=4'b0000;
for(j=0;j<4;j=j+1)
begin
for(i=0;i<5;i=i+1)
begin
a=$urandom%16;
#50
b=$urandom%16;
end
end
end
endmodule