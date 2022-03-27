
module FA(
    input a,b,cin,
    output sum, cout
    );
    wire s1, s2, s3;
    HA ha1(.a(a),.b(b), .s(s1), .cout(s2));
    HA ha2(.a(s1),.b(cin), .s(sum), .cout(s3));
    or orgate(cout,s2,s3);
endmodule
