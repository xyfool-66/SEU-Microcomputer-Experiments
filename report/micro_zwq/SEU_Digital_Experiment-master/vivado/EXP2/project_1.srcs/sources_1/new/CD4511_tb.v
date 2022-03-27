//Verilog Code for 
//by Thiago Lima

module BCDto7SEGMENT_tb;

wire a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb;
reg D_tb, C_tb, B_tb, A_tb;
reg LTbarr_tb, BIbarr_tb, LE_tb;

CD4511 dut( a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb, D_tb, C_tb, B_tb, A_tb, LTbarr_tb, BIbarr_tb, LE_tb );

initial
begin
 LTbarr_tb = 0; #1
 LTbarr_tb = 1; BIbarr_tb = 0; #1
 LTbarr_tb = 1; BIbarr_tb = 1; LE_tb = 0; 
 D_tb = 0; C_tb = 0; B_tb = 0; A_tb = 0; #1
 D_tb = 0; C_tb = 0; B_tb = 0; A_tb = 1; #1
 D_tb = 0; C_tb = 0; B_tb = 1; A_tb = 0; #1
 D_tb = 0; C_tb = 0; B_tb = 1; A_tb = 1; #1
 D_tb = 0; C_tb = 1; B_tb = 0; A_tb = 0; #1
 D_tb = 0; C_tb = 1; B_tb = 0; A_tb = 1; #1
 D_tb = 0; C_tb = 1; B_tb = 1; A_tb = 0; #1
 D_tb = 0; C_tb = 1; B_tb = 1; A_tb = 1; #1
 D_tb = 1; C_tb = 0; B_tb = 0; A_tb = 0; #1
 D_tb = 1; C_tb = 0; B_tb = 0; A_tb = 1; #1
 D_tb = 1; C_tb = 0; B_tb = 1; A_tb = 0; #1
 D_tb = 1; C_tb = 0; B_tb = 1; A_tb = 1; #1
 D_tb = 1; C_tb = 1; B_tb = 0; A_tb = 0; #1
 D_tb = 1; C_tb = 1; B_tb = 0; A_tb = 1; #1
 D_tb = 1; C_tb = 1; B_tb = 1; A_tb = 0; #1
 D_tb = 1; C_tb = 1; B_tb = 1; A_tb = 1; #1;
end
endmodule

// Reference: https://www.embarcados.com.br/tutorial-de-verilog-conversor-bcd-para-7-segmentos/