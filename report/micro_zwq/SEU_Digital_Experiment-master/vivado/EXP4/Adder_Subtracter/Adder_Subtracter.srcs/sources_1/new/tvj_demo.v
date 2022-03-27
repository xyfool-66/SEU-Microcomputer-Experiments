module tvj_demo( 
  input t1, 
  output t2 
  ); 
  reg [7:0] Am,Bm; 
  wire [7:0] Sm; 
  reg CLKm=0,CEm=0; 
  c_addsub_1 myadder ( 
  .A(Am),     // input wire [7 : 0] A
  .B(Bm),     // input wire [7 : 0] B
  .CLK(CLKm), // input wire CLK
  .CE(CEm),   // input wire CE
  .S(Sm)      // output wire [7 : 0] S
  );
  always #2 CLKm = ~CLKm;
  initial begin
    #2;
    CEm = 1;
    Am = 38;
    Bm = 88;
    #6; 
    Am = 55;
    Bm = -24;
    #5;
    Am = -70;
    Bm = -38;
    #5;
    CEm = 0;
    Am = 8'b1011001;
    Bm = 8'b11010001;
    #20;
  end
endmodule
