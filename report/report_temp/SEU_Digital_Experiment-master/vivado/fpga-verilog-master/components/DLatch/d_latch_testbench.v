

module d_latch_tb;
    reg d, en;
    wire q;

    d_latch uut (.d(d), .en(en), .q(q));

    initial 
    begin
     en = 1'b0;
     forever #10 en=~en;  //en with 20
    end

    initial 
    begin
     d = 1'b0;
     forever #4 d=~d;
    end
    initial #40 $stop;
endmodule