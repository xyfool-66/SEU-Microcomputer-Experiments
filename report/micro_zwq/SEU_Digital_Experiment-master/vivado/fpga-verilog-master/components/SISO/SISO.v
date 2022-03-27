
module SISO_8bit(
    input clk, sin,
    output sout
    );
    reg [7:0] shiftreg;
    always @ (posedge clk)
        begin
            //shiftreg<= {sin,shiftreg[7:1]};
            shiftreg<=shiftreg >> 1;
            shiftreg[7] <= sin;
        end
    assign sout = shiftreg[0];
endmodule