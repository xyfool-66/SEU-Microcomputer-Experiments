// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Nov 29 21:54:23 2021
// Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tvj/Documents/Verilog/SEU_Digital_Experiment/vivado/EXP4/Adder_Subtracter/Adder_Subtracter.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_11 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_11
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_11_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pAlKwnLLBfbgp1OftZ9/qNuNNOkawSfoxrOCfUQUiTEnQkQZfC9gVsfP1CGxGsndXHCafXAC2B/X
bWvZARwQqF2jZon8QrVTGyGbTLBZISgDJv2GMMPoFpqghFpUwsjjVpCTEdAkWNJtEEa7rweVNgkg
+piYPEikytMnp5Fsryk2LtlFgxU+wQpX0nZKZcNUHUmaoEPuE1HImFIrp0MYeENixgwg45qYlJrV
A+w7BJyYwOV/IQT3Wp6g+1gU5eASe+KLWSANeqdb9DcXq6aKGHOwZ+/IEtnlP0SAMWK95LckwRyN
E6yTCP3k/WX5fhaQh1B7v7wEmzOFeuEf6XkePQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jpaqBuPejrws22VzG/VXZl43RculmGrlppwAgpiMN4Z/2/4xoUYaVmzgzn2T8lD/4BUDr4kU4SGe
tBTz0p9iH0ZqOazvUrvVulxdUjava50TTTithLoEmaiii/yQkYQ8jPWj87afNT/qHF3z7lrxZ80V
RKfy3cl9rA4Pty8rkVrlkoh82kDFjvXhnfw6wCCVMU3W0P/cxAiT9ujZA0Lw5tzvTAQ1xH1JwD3B
HMSpEBeP12sg2Xf9PiBkRWAosbp/lqQ7NE0kpHWWD6HeWbel97P+m5gvegGixVgmAxSNctozYCxm
FuUWA4sCOXNtVATo4vGCPJwcJKsPHQkwcRRbgQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8016)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
