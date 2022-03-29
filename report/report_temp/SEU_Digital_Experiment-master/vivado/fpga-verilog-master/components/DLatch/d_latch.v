
module d_latch(
    input d, en,
    output reg q
    );
    always @ (en,d)
    if (en)
        q <= d;

endmodule
