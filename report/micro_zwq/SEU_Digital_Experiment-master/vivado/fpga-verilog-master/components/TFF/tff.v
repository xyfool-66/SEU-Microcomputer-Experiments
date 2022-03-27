

module tff(
    input clk, rst, t,
    output reg q, 
    output qb
    );
    always @ (posedge clk, posedge rst)  // asynchronous reset
    begin
        if (rst)
            q <= 1'b0;
        else if (t)
            q <= ~q;
        else 
            q <= q;
    end  
   assign qb = ~q;
    
endmodule
