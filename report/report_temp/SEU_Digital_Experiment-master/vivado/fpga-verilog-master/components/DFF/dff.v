
module dff(
    input clk, rst, d,
    output reg q
    );
    always @ (posedge clk)
    if(rst)
     q <= 1'b0;
    else 
     q <= d;
endmodule
