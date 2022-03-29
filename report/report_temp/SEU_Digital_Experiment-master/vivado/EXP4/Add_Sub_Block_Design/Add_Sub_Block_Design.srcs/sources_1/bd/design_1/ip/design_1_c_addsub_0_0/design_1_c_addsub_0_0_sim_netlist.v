// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Nov 29 23:03:28 2021
// Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tvj/Documents/Verilog/SEU_Digital_Experiment/vivado/EXP4/Add_Sub_Block_Design/Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_0_0
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [14:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [14:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 15} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 15}" *) output [14:0]S;

  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
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
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_addsub_0_0_c_addsub_v12_0_11 U0
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
(* C_A_WIDTH = "15" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "15" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_addsub_0_0_c_addsub_v12_0_11
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
  input [14:0]A;
  input [14:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [14:0]S;

  wire \<const0> ;
  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
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
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_addsub_0_0_c_addsub_v12_0_11_viv xst_addsub
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
q2MEnwBLdHMmXlqdKE4W/YcgB0gKLVwBgkll6gEBDT4ClpI10NCsU8jfWDFZ4xqr60j2bblifOB2
4ujL0KR+kyiRdVM2NsJQJIA5fhy7a84+JRG4h18/oIXHBklmWM83jLOsG7h6Etgq3Tkw5wS1gKxm
D4YKKPwwgrBk4Qdy4DN9EyxrZVrNwEDoZMkO4ZYjQfsezq3vxbW40JsdbYt4Tf/O1GDTU904+zlf
UimhRlmjgXLeqDFsnblgVHqrFRKlUOY4N7R5q54GEeJgDNhnmTA3HBoXS7jZP6QWLEn3MoPFMtGA
LSdT9YyQltfeGj6AWcV5sk5K3UWVeEk4jqNmCw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kZ5pKIBPtTPbmuEt85z/W7yg+7n9qHNxN229FB7oxdxX75asnhVL2JAThkSJBjIdqCC3xOfUx7Xj
aOl0Qe9bdfhLwQv3uJQSeYlNKDfhBVMHDuI85HRxhMtGCpiw+uyxhqlkC76SNbhY2J+Xzt56o1aF
PHcy48QAHs6A9sQ3JtxD86kexjwHEJpv8VTGL9PZ7qmPlWLAkjcpVAVm1HizJEF6yu638gIKDCJi
cfjfqTfiREKU78VhfjJyovgiOkKickMlSV+uC+99buSkd5MA3bb+cKBbftWhazluagQMCx+4BZB5
ZD6TddQBHwplxRlHWtd69QuJqWjTkoyOPzjMVQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12928)
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
