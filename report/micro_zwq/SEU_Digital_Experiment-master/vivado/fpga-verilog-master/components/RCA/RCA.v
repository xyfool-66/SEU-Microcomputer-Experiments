

module RCA(
    input [3:0] x,y,
    input cin,
    output [4:0] sum
    );
    wire c1, c2, c3;
    FA fa1(.a(x[0]), .b(y[0]), .cin(cin), .s(sum[0]), .cout(c1));
    FA fa2(.a(x[1]), .b(y[1]), .cin(c1), .s(sum[1]), .cout(c2));
    FA fa3(.a(x[2]), .b(y[2]), .cin(c2), .s(sum[2]), .cout(c3));
    FA fa4(.a(x[3]), .b(y[3]), .cin(c3), .s(sum[3]), .cout(sum[4]));
endmodule
