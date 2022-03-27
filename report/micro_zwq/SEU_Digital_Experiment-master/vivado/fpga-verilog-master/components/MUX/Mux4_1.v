

module Mux4_1(
    input a,b,c,d,
    input [1:0] s,
    output y
    );
    

    /* assign y = (s==2'b11)? a:
                  (s==2'b10)? b:
		  (s==2'b01)? c: d; */

       assign y = s[1]? (s[0]? a: b): (s[0]? c: d);            

    
endmodule
