// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Nov 29 21:56:15 2021
// Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tvj/Documents/Verilog/SEU_Digital_Experiment/vivado/EXP4/Adder_Subtracter/Adder_Subtracter.srcs/sources_1/ip/c_addsub_1/c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module c_addsub_1
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_11 U0
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
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_1_c_addsub_v12_0_11
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
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_11_viv xst_addsub
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
Azgf/9CNETRMHKWDYQQilq0X6/bmV0gMWLjxCSRT6Oz8Ql8fq9N4lYnp+1iMmKypVBM7rLOMENSR
YdGQG1/ToZEN65Ul2Gnc/lTbBxZdbsvfFrKsExXxbTzSEC1g517zGk+zi6NFgOCsRc3mQ1jK008G
bD9Q5EurUL0E3cq+WZU6+oMQlzbEvpA1xNBBZNfaE1xwFqZCLUQHjF09Vo8kFu/GXDp5i1sy8a4e
BOtj+sn4WJrYKWgyeqbgzrF6YMgnY5kkPJ6iGO11pAB+82g+Loz4KDpV+oU/LM7xdJ//9c7gWusM
KJrQFIkSjyl2TWuLFROHdThfph9dNJZ1yKdR+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tl5cs5XRcgeIcGr326r+Si0UDNfN33X6qRiH0DpKflFFfYsoQTO7hJaGCglVeGeG+n13j7YLqhBX
KAbw+efbB5xzUiegUdSLZ99GGYK9rtARUfR5JAxp0ZOjAL2kL5Xr1BSSdMLu8U7QoziuzUjnNIR1
o6gg1k7Q/TvlClWVs0UASRnOAvdUV5g7oOScCprVOPnQjHNrSD7g+U+RpMQiEcHPWGpQJ06layL0
lFELTQpiG/DXfdnQ+bD5BUEcFHTv/lnmglFkEsXPfOjPYc8sPAI8yk3ZpockbLMu/QFFFEET5eHl
Qa2lZ/Nl88Iy8sasCE9w3/WgI5nujlEHeVX2Pg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13040)
`pragma protect data_block
GX+PlzHaWhbO3d4v5Rs8f36ZX5y33oBcaK4abpnQdh4rNgcQEOr7d7sQl2x/hTAFoSGMUsFEnhkv
RQAeKKZY7Pv5uLB/R+QuX7Zd6ppwuDTZI6ozLrcMBCcC/1KbmON0UmfM4WKBUtGkiNRJ8T9PiDWw
CDiEFpvoUrk5cwJ0swG/OuyyD82l509EEFuwTdfqYbRRtcAxLga+BWVL3gXKpJ1kPI+PODBTvqL2
cpoUdTQtq/brOwGqj1/ZimjPG+I5yOu6pRYX+x65cAjLAvVQk7GjeVGQlkNw5F9cqoB/wUaq5v+H
XViAuP75teDPrqM0GUvutLY2CuZYNB8E5Ecwn63LaT818MCBIu1fOCtH2q5A7TD0cbYJQGTzEvVz
hx6Jc77l+7Bj1JbNdQdUnBjYOtjHKFqrqbfZRCaEQXfCrHjf61aHR81HLH1m8Obth5a9RfWhMhnp
ZCwgMnjeUuZlF1nRyTsCxpLhkVHF6VbbFbQRgLLu4/ddhEafL3m4QpCnOws+cWus+rT4gFtb07zF
vv+7luTu5Lj3U1hGZv35r009q8KOzBCj4eEpIixJs5IF/M8OjC+VubOf4qq5Z36XqrzioCwieIJk
i4b4FEoKVX1dhlaOk1E62weNW6WiwLDdiD7PUlAjvdhNQGkcsmDFVqEo9YKDmaPJDoDSFOMTJwIk
veq7usQnIp7xT940d+o1s+qzrYRWP8KEO6EWXXTim5GWsFqhJxu4DWK4ae5TfTEMch8GzMmCOeV+
OfZXxs3hsK7ROugaZ3AziUdbGWbQERA+1/f1co+7OPuJ2BhR/tqw2Dzhpk6rBY5gff0dydwxs8Ad
2vRfVMEoeGeOy1RUuv4LWVm+/lP/sGmbjnjtZNUKNo1CECSZEGuF6I2myNQfqb1kSx0HblvlB6qh
GdMKeig/iDTYqBw5Rz3aiF9ILEjcnD7tIqivvudnb2zE3UALnK6cSl5vXHIOaboBd6LWHLtlACyX
SA9nHkeCUcU0ezY3W+5Pfr6rnJCtbBxQ8e2cAF1KsevzUdDsgFN2+XSRUgAsh75cCSLCtKVr+W1h
7KQQUhnWaTAYoA5mqLKwoCcCfWPKjBKgi0q4JgcC1oozl4rpYaazWK4jF/mdSBdz3H/Mybyxvx3h
vgXk7EUKxziy8xEDeF9mtD/y5eR6vBoDJ6SYAZ0xpEVN54fD5UiSCSnq0nLTR0BO+PdlS6R+DxTC
0hUQ7wbCU8XExm+3t1pckCxrQk4MrNsfbffnVwSomg+WYZSrJNnHkhw81U/xGwU3uYxGmlRgVSGJ
CWPmF+Y+DcqsfnQwnGK+oPqD05ziAakt82mLcaKiuGM85xqN9PUvyzn+aXar3peYoZPXkW1/CpNE
Mcq1DX0ky4GG5jCYiU7nMMAwBMjX0uFgIUhWRXjRDflO5lpllL4Jw9NHoAZFrSYw+9XgSPPNOZ1e
PSD+yawYMIE3Kpf6CROCUIevW0t5QgC3FzkeNhv4pMpq3vAiXRXXlCE9aZIllzexw3C0Oqm6KFJv
Q7PbnnpWkmsXSR2owbwDqYtB4ilc8mvS6LW+vjRuFbTV9VBIFDlwePUHIgfsRpf74+OoJsB+Y/MI
tE5JtganCvEcQ+5YWIPq7YTBkeEUmDhYI3MyFJaLpIPFVKW1H199B99mfUgU/I4ZTlT3S0Oyhfpx
SqW0yASySif8199Pf/j5tRd+A3OQ0GU7cuKHAb+TUO9NdkS4wqOy/FnSTYJs+dhyUnJG9vQzRM44
Dj/3ys6bZOx9FYiTUcEZKImjntA9MzzvvvWwugIVRZCJmmGnyySslP8gDd3HVd7xElgb2/p8Dutr
hYNMN45k5HwQHxdVP4Mdm+Qy/OD7E4OkteDvZZRXLPUSRWsQ52q+nY09IofRhy9sHRKQhxBEu/mT
BQkwagZkNdZU7DVxhN3ZmE6H3TKWdsn6yfLInQc2V1EabqkZsX9//Eb1u6bsG065D1UmCVYvKnxa
Dg51hrzZDTkUFjun8LCVXYu/JSsL0dZHRky2QLS58n9NaSXSU3iHOst4jlWZCewdppBMt+WvTcB6
MG4X/m5L4+W5FL58BHccm5qRzGufAV3fxh+7lqQUZswlhD/bELY82pUaOLQ0AVPGXvlOlWmQNhbe
FE7xk8p0WaX+b4/+L97V/ZdtEEpqTa6sIxwOKRPaoj408ogQyuXXnApil1pNYX5zgxb6aeMxuy7O
Ia6mV5pbQ4h2B/cMWckgseXH/3OmnwRoXuRkY75PwUrnB03cooLYtDWt4wkJCFKMs/bAcy+vW1a0
N/HtazlXyZk0Nyd3ypJjytXXS+VYOd/qvXDpgktiY5h+/aXSWXqfxh284qTNrTtS9sl3tR9SDqG/
gNNotAbEwPlEW3mM8GB3aSjq8D72gidvUOtjGCEpB3tTv+bheDg6OpsMnF0X3ap0r+gjf1dU1VcD
uqzhlAfRJT57jBzAQo/ib7HF0NJ6tCcxzQmmFJikVkAbjdP/Qlj3pEDBi/dYtS2HcdxUJiCyUZSU
qvzweLDXpAa/0QNeNEC0YPnbnMwrG2rq+ZrrBz7Enf2R4gpzzfuS3WNTCl5LzmAML1Oh15/KQWan
Q10/WSxaPvbs4uPkJHqk6QsTpnbBUR6V6ZdgKkp+Z6DkFuVLsdS0XEd6h0h4pVxAUVhNQhtEuLNy
HH92SlWP7h8qJ0D4lLOiLsAtld+7Ph3uBNZNT7LvBhTjLz3ZkjUHQFoKINigBABleCOVYcnL7to9
PFCGvGOEqKkyvlaBO+7xaDpRdIJLJeiybuKY1wiS1jicdMF/Xru1JYg6YuNQrUEPZtBTOWfdaeOv
AeDVEREIypyBYqqMfHK4LbbrX6PFqDIy/3FzacfpHm04QMZ73k0QBaUyyHSDUv97VGpdSK5oBEcZ
ZvG7C/0QxH6/jDMzAyHvz8eIRT3EaI1v5+WuWP2ziIG2WOIA/RvGuXz0PVG+OHZcA0dGVHuIqlHR
gEUC76zCggMKlf6IN7mQH4UChPSU4M4hxSpKSOWwqtVaeTf8WAQCGdPVkLQlbplrHEcWMeXHcuCl
ummUhXAjALetnsSWQc2wrwsZ1U3kKXnBPVrOpISwm2V9Go92Z1krvDA6QZmKWQnq98FNVljnBZEb
LB0PQtW4ExNYkD3qZlWMxcj5inXc0FKfx3nZY7az9rup/eo6zw0xKt6p0y6bSPqPy6E7UvuCLwQ3
JRwI/ohR8ac7/gbDR0ljFt3xuvXVZVphq7cF5bUT7Ry81GNt7Z4HN1E6dHI9OAG0GKKh+xyGbcQ1
9vL1iiKbVU0j0rCOBq6NmkyHvCaKl28VHBqS0T+h8ZBGL9h9P4Zg7+42VPtMrDIMj/w7JuQ8eaYH
w5wm02JNRTuJBCQM8qupFbG+B9EY63EA+HDHEbK3/vVpBa9uS25kG2ji3DiPVWtUW1AZRKtuLPbV
iQQZFOb092fvwTIcQc3zkTkZGnDXrKmUI9DrKg+5EGSVKSzjMMYYcdazAlHhJKle8qAl3Xlovz2j
6393KIEOFO0UmSIhzoEpGxITDAQ0c7cjtBuZEuRlPLIj2Cd9NfuCA8LMal6Gz27Dluuwi/+rtgL6
oYDOKL+JWts3J1OFgYkPHZV2ZHswVW/FgUy7dInDML8cPlmQiGxLYLjduzkOCOJ136RnHqHm+JvU
xyNIPOGSX/dzvzQ1UM0oDxNqpDNcFBExrsYiFwY6MiPZacUBPUi/0dVLDDovJUaoCiEbj+fpZ+CS
KrKohiRL/FUVx3wK9/ADqTu0EndNaOH9PPh1q92ss+kqZ3hXpIdmBIvWdG7ztcg6zNISozjA1Qnm
wKFRh5e9/JNv9/5dLV8c1WTMoa8d+Xr720U6aVNvr/l5wBj1iIJu8DC08oukV7yw+n9JS92pyyK3
wS7i5rXAtV0KOYFu9V8MolJ1w4pkhSuw4LEsTjOGKAHMBtAFdUjWh+3ELZZBvTGSGGxxxwG4x6iQ
gx2GncxSfPdZuQpwRaV42tySopxuZU2jR1+unK9YVKgwNUX98tUkHxVtw47rGqHIaNzzAgpeZtmn
Y7SQpOBiCSgwauHL51Qt2raHMnyZvS5czXhDhWXjxl9GZsVQCtIODzIfwiP8Cicc8m9MyT5+GFhT
T2/fYEdC49VsMWZhz1NfCC1pLV0P8NnpOz9XRWiCdE/cryWgZYkUp1fKTg7pCxofeqKp8yQN9ucf
vAOpGa4hfqZjYVjtfy7gEvCgyoh8mKJ5b4xCqiVnhtNO2dQgeMVyqn3dsIOXV5I65SIl2vYpBwz8
0W2q/KVDrtfJzjGhRoxBC2FQxuDlRY8scBtExp1DIkOrnZjeWzBYeGaRKI1ak07PtJJ8ItY0XEvp
GGqVBncfm+LUBKO7o0R84hK12wCNYCcSruM2P+G4SqulnUzTYEEGXBl9zqooe8nR79NSa1rp7odd
IJFrcymteQ842vZmmxb1hD1721KxhETz/C76UVAhTnBnhkA/nlzVdjvtXQzeAi4PJ4KICyQi+Yhd
oN6X2OxStAlHSTkRe8czEURRe3QQBi+SFgoY3pTzM1SLXN22hL5TNjA303M3U/+Sot1OOL7JPxSW
EOi4p+ElQzhz8uE+7CMcHv3cA0FukNcZJXFIIBJ3R48v3ec9fl8RDZfYy9AzVQzEJVA0iXc01CtK
TQMP0Y7jiL2xzhdYoK+aLPX4WT/ImMOCDvSJftdzLllK6nFCxcfxcFjxkzuWrURhy/9WiI/SfTHJ
Wt/OaH3ggr2OjXosQ3Er0NuawPgqrVR0iROn+Bd9t4D3KBNxGymkWADOofW+nyjeNpQLAz3/sz9Y
7qannm3dsEJomSt/iqdOiiPKWI2ADPP2NIMWJ64qnDs8BsRCTWF7dZ0qo3Q1L+e46nvOOrL6OFA4
Y6HMG3V1wdUW3Nwrv2RT1FH+bX0jxqsdauvX/CPANsNhq0gpJWfzEtLDMRhIUziMaIe6jqb4u2QY
pwUeyidvsMwQLjpibTxYIqrjawSUHWK+BUKCZdu1uhWtBCcErmZHIXAkRvaXeibH2J1C/jyt323D
OM30P3iJp4kS+YwRPkOkYDKuY4eWNEtwmTzxhhQBEhwZze68AZPmj0wttfyQhwyMFfWm2lo2UaI3
dNPTLqhuK7g+xqWjGTshJGX9XSuZvU2iW+PJhrsSBoY29PkXoxbepifElvfWYBLZlG2pqFhtVJQm
6E0xHm/Bkav7V3OKfcFt035zFdapvFnyVflg77xe3VAoZwbsEGDwvqv1Y7PkYYvDrT0lJqg+n0tV
KEKN2ewsxmM52EI246mMx6K1u3180PS6zyzkAAPfcQRLiJxp5sa4A0Q4vdOIcr782zcT8BR245Y1
TGSpAOPfvq+ALUqugIMIdEXb6+WUpyyGY8Q1rxw2zf4d8KiL67cYBCLIJgOrPJrHm+3Gm6TQ8wk7
a9o1WXD0ZhvzFlo0sIw+H628dgxptLTejveJyPwZqfqSnsFRExcT6ODV5oJ15A1ByFd3VNVk3an0
1wsmGHcZvg+nu9G39wQ6g2C2HWTGYIYHsRoKqlSqM2YTX4PN9xzz3JH750qsCrWtI/R/6JkzQjwq
der71wWr3+GMJsB7MenamNNa2d0GSm2TspcmOTOqGRaVf7BfNzVQAdZseqqXspFrBb1zhhK/8yZz
BhwOo3AGB1ADF34qPMuRqAyoKLKl6wQe07Q8p8vwfkh90HCXKOdaib6GvwBvU1dXreC4ysxcv/dn
RMb11K9PdNzdnrWL5XV8AT4Ddv9d+07Oqyo7TY0qSDvaObDA5RHreG1FHqvdooJfzIwf1OLCd91/
4zwBUreLxaFlke0Ylssstp9ye4ZPBTKUyeB+LeH4T/b+Oq5aqyLQ7UVUx8jCEHf73OXZTJWHZ6lt
clKHq6WKTI5Cfy34JU81Z81dtizTDj29/XPWh3mE2q61WLIk/umuk6nKcAHf103NbF16YU40VGuj
paHMh7jZ3TUF38Z96vX/AbiFGDfn5+toe4gD74V9UfD9Sd9tYGBbTXEZVRon06Je6iMss4JymGVV
QpRLqeHAvHHHZTeVdEHJddRJA0Rd5VvGCUyslSQ8ffeHeu7frhoTdFvL7Gj1ERH17zjn5INZQVN7
qBOgHbJqxssi7dWkyYHE7f0wAVrBJIsb9yWo9Ml7wEh7JlSahgP7KjMODZysmhq25Q7UOdFyG9aS
H4Pqk3g0IZG4obNIDMp/oQYf5RrhG53JPqXfylrX4Ds454ihPzoBs8Xbu5TugJqjIJdt+io9a6ps
vc3V51woy9MFNJ4rHKh13DmFVVW2TnS9QG/nrIKIktD3CkMHNdmk3+NrupxptIf6eNO9zceKK9GA
SYtPcD/wspSYRUKcGm2S4FhH2QGQgLujzXU9qhKZJj6o3R4IcxJj8wlKY5LSvMHyvvOcs/9fhAcr
l5QV5jdtstQMYRMR2kCipeavo4/Bu9d7VgbBf4hPQy1BqxRo/ntEwArh2tcyOvJrUlaY5VYqNABH
0xguwg9r6Xh41rjqkVvwEARi5PLR5pDuF9KC7M9/E1zlJoqLVWV71YPPqJP3i+M05KJF+VHIN1h7
HnKrZHhT/lyuWfnWFMbHPoEBFXx7r75l7nS6DofIw/Tvs9KL2yQPM47gFSML2NBKM/Gy7ThG4nZ8
QKDo1iG/+zPeoVFuJ1BjUMWganPGX/kH74mzi0BTfNdK2BZ8pJR+HH5gtXyoyqEw1M//Bq7p74TP
5CVU9MoRC5q2hlqHRaBm3hUYUza+Xh7e9aTDYNCWMzP2zsuSx5xYiWBg+Gxkn1NqgPdW0ZFbJ2VM
9ZCbcsr7h5ugux2BveEfvkdRSGwcja+DOyRCwB56MRQv5gi/H1sUiuPYaqf3BIrASLyLCN0vMQpj
J/1UOAQKs2RNg0F/a+oWmrL0K4UhJ7kl7yKU2Hg7iHC5fd9WYNsof2Bjl1bGtrUyH2gzyQPQ7GxL
sPr6nGjwa8cmIg4F9XFD9wvob4tO6t+cnlX8a/9V5U+a3nGHcqfnBEsSqKntJfFJNjdVDCTJpzhR
ifEFTDn3W83Ax9z1IgXwsylRWc5pdGG6HZJlrNtIgoof8C49akCJ075E4t2wxQjxbBntkyufPdzn
UBybCLLtfYaZpmVtcB5QOQg1fSxDaYZSq2LT0z2OCe/k3moPWR8M2LeGUk1BbzBXvYkLNh22c2gj
CqFQeG+e+pCf+OsrWc3UXlEFWb1hjiUxnt5fkimt/ivrFvvK81FBIwQNP5ndCazw1Gvkhhmr4iMS
/rhbJepDEPxVfOlnGqGgDRNdtzODqj/taGYGusHNk+ENepo2QOadlzPKSDU5sxgSGiSy99sh9/xG
Nip352pF1nM+rfSQPLNazCQpvrBUUbPci532RY2re2Uxo8GJMBGhyZGy6pZWWmPE9k0+Oq+S+jja
wRW4vet07uDpCd0tpSgCcDEiOqR7BvSPLTTyJRj26YBbehSZeSuDc9Rw3eaaQwE55yUQHQgAqwRJ
vc21X2tiJG1uBGR9H+zIVqlHRfBxEbu0yAZHctYSA2AKHmcyp6YO2YO4dxJyiEtozzfCMmqTHeiE
H4MCYcQJLll+no5wREp+4pejt5kkp4naj6w7za+/lYyOdXqPI4gw7x5Rm0pPavej52SF4lxTNNXX
emWerS8t7W7icX8QoSjfOXENgmf/5O06YbLtKBap2qO6VasNJOc6qNtYl2klYJgskdMcnSkXiuLE
+VK2piFIphNhuUH2ahVVp2Cw3NkDE/hefnjxQ+rWsTBjCKwzecsdfK/bJpTN9FWgujXURO1rioih
MEieV65/cLupom0hDBiHHbadU2iqrM3Sd+wSsKvwc3tVIPQKYeXrnYAqmVlxMJaOP7NWQAG9HuYn
03TomMoOquAmRkkRZeN5dyE3Lw7KcfyxPtRXffaOWARCYXcSjfdNPVzPWKbEpperAnISKN2U97RK
XdVxCokPZm6mhRp/W+Wi8gEvBvwQjmNSBE5gCh/Ws+6tRBzpyXyWGW2KhW/WJA/lLJx4sbKvkMKU
8Tqh9CO8tGiNicPRRgkaDGwhkPkVCLsmesnGmZK8IFlVMAO16so2ueU0kFWxPc3VYZyx3e8vrK/+
+LwcF0EwsfRGh2YdV7uRc249C4tGKb9l0G1/YHT7kkNhwv0z6DTvdJ1pbLz/ehoS9MIm4ZJaas4c
OgZvWQ8xATC4NiRXFvHJH/qKpkkIsk63f02Yvix3eDPAzg69gKtUjO0L3WfzMEqqSzw6f9PRd0np
Mkyt435NB6yFOWK5E3jy+Tikcb6g9njemyG252XngeWTP9ic7a4a3dU6XZjjamVSaq4HoY6veuAQ
5ftGyNv4Aqb4wD3fxHo6Ws09j7DrgTClf0sPBQkBpEXNuOPtl3ryUGRZUutupI7o9zHIvCDZyQYc
m08bF9BCfuK4rKu1Mgy71BYqwYmtkHKiZtVxlwZaa/zmgl4Xs+20vijh3kP/SKIETd3/WIgoMPis
GvFvxw8lOpjv8ZSTQeYD65mrdOR4CT9IGYNtOe0wi5PGlkWdChZDpXhbMvCeiXT7f/zlIFSRHwLl
lfobh84Z89xl9cy5Ko6VC22xznfD/9wJYcTcCVciRAbl19tS1IxtExSYvbfkt1sUQPmywB9qaH7X
qKGT1Ceb/fHXMeRqhR6nVycOfTUFjVtUz/3Ty22q/02nuxv5bBGGjeoelqz4k1liaKVAeCLHW5m+
TysEJeY3hoPcC5ZEIdK61XCJhuUp4gjaMIfxYymr5RpRIi4wCDHgtRBPWDvi8TEytqoApOssEmLr
+UcwrJiKXCsZWuwhfG+T97n0+1y0b2MBVnvFSvjVgZNEtyr9PT9w6b4S3KUGlPk/wdGiK5oSs/iP
yH9Bc2OF/fZiUV+sxKK9CgKhAylJHaq3zwumPVOZmU7CEuWtIBZEXVQXceYpE8n8/OkAfBuWSbf4
12mG8hiAAn9s23650zvVRttQA1H4GiNKIYdtw6X9aeh4Kv3Z3LcrMaNqV59dW0NvQuXNkVvAkRjE
X31qdoMACAlhB9tdQFb6n8UgC4JaTn8vfhAIb6tbpa0Lx9WNbgktaNXLPbmU5Sz4W+8as+377Prz
HGcDnyw1I1n8nrBEXP20GBJ7EDJ234HAenoDS7E1lpGwx3CgMT6Y6tQWNCD+WztNrgeLr4StG8r/
N2KgRLZtL76WgGlQgk6wbvZEwISzAoTIGfXt7gkN17kr9X5bdB8iEAozlb5pz5vByI6Gc+7cxoEu
N3aUJOL0Lj5VMCzG9OT0eRzjSZAwHNSLFilGFK0YZ9PnqaC4FLwm0Y1xD9oujUeE8HwznExXNtXi
lSeCdojyFWIP4ESs4u7b2nj5Fle7l+7o5jPUgteTxMcbTYp01zXO8xfeNjPsYj0cNPVri+y+Gdlo
PBHkV5tJCMISmNASK1DWVfQzoG9qKQTZNuu8i+WAg8KuIYclNfwzLSD3fNAXraWUZ3v34LEutcbq
JbSnKDU4m38gL99vmYHsI2zAGCfRCJk8Z/cWwQbUSVyPcJ4VhB82OYOJkskuvb87phrWIcnrrZmI
Hj5dLnrwb+46QoFTIO8hv+8H6rgH5AA380DLu6hzaWhuqmWeBdzY3hgwF+g1ClRtnFNt9RvHZg1S
/bwJ8FgK2SAdeJIgsrknLfZkxH7rFs1+vUwiibP76FOAG8q81SF6ZV3cwNwbSi2DfpZDTazrVfih
k5rsP+vbb9gFsne1y9Aah5Bjy6wYmYs0ypH+83dhczQoB/oP7M5Do30kL5bz/5pzfJhPIlcAK3YI
1916kddcAoDswTMGsLZT54TkSG5FeJjyA6AgJBDnTBF7FnYDMCajAy1aOC9phtdvIWnTomWhXLou
jCcAh+B0W+oB9VFsq+WUQpPWCMnk+JkR0hPm2rWdU2IGh7rphIM8Shb2osoOlCaNybmNpcQKGW5K
R4dgj/1zOrFjmWazqY5TuKM2DZMURevB+qkAp2SEExssymgf7EwnTrM84lYGSFQFr051peZ0558j
8M02L/A1wM5bpi8NIRPBzL7Z0gq3pG1AdX8NhRha3H7EgyHCimnkPVMj2a3NAFKrsT9PBjvbP0j8
AqiBJCk2aopoKG4YKjtO1I3BKmujJvaXWuVpZ9OiuVh5u0Wxv/S3NRZ1WNLrMpQVgyu5nhjmZ5pX
iUR2DhBt2NrR9llSHeEW8u43M6+kNdlG9kjJf7axHbtTuQ6Sw+rESua54y3X8Osp3j/9u8L/r3rl
6rzOCuQVpDhGM1ydR2N1cMAZrZzPu39owDrNWfuM9OgZyIePTz82Pq+p2P32JxPeRUG0P+NlAT8j
PmWhNdtKOmQ/JEJqGKJTt/KkL1mlbz6l69oBsqRJJUOnRzqHt944GYSuwOhPfan3IdyGmzt+HFjw
EDi02rUhwA08gbupfgLgAkigU8ViInrCt6nPP65fWvjtsE9FXenbRna1KCry8zFBbIsQvLuzyZiL
5G91Lg671+wFG2ZnngNf8kAwwXHNyANU7VSSi/Bbn9+ZXddejK0rooxC1v7vI2Ree5tlkJlbMTGQ
cgI1EfeQFpVhQW33hmpK4Xkvt85taxCyBv9x1e23aE4xSLFH7mVstuU8oVJYOd3TKbcAcnsXGaR0
hSqcX2BHa9w5ecs3y6z0c+JeSdmlsplrp+vL2+/IXsyZDpM7I/85HyiqgWr300Z1Z/tKCIDyonzL
t9I9eywu2XRBMqW0aVZVdq9g+SKcsKYAhwSQZB5nDROfC/TNu7L4ffPg2TmZe7sPLZOHqfpvdUsh
mFsQ7rwsVl/5hY1AW0FUgBt2xKNDw8N6EaQUqcyY8PZInmp+F2J252NSLMnw0Egk89yKLfjNLpYG
ZNJa9r/ISObvxeooM8yLzS9xpfQFcfRil2OEPabztwTkKAJPN2926cVFx6uPcy312EXdr8cEpJK8
V+XqdCA0YdBzxZViPI0np1reUQg46hiz8r4axwqgWCPUfBJg2g2DhVjrBmOP2Wwya+f1lDkidlOr
m/l5YPM1BYKz9nB2nIfAV39k4rMUGqlv53bG6xDEDNOK3BZg+jXfGJOP8IdeQN3MUHLW+ckbyrXW
JDgBNBiIr5WU/tMMRkqkzbRrCs7eI/q+NOKBbwwil7/TUuo56LIUh45NTpE/afFICcccAUZsdnOs
P4Fpmk7BDMjZMpzYW7Mk/joUF/0omSuDKLMRFnfBzRbl9MEgZ7Y86WkSNXueP7Zbz7i8wxmJqumC
pOz0XcJLU0KcyOBr0X3X37dqd/Kk3kqxf+6wrrE8iQse9S7A3pFWV3+AFihPvQ4vqm8eIYnl6ViF
enXPo1Vw01x+oSWz8+IleKB8wMpzdNH05IyGe6YkXcVru6IQ838avpn1CcB4Cjj3iFbJAWd/jitk
jxZTr4vquCFetlUncC20NCPQ8i9A3Xx0I3ZEBRjae+tBpNkr2yLZGlBjZr6q4KtvzsbVLnstjGSN
3Y07fOxJlmdIxTZ/lqAySF/ORI0PDFLbvEJlwPrgUEIZjhxgKClxGqoXLxL4fVGtENujAr+CW32+
/xrcpY4b+ZqJk7gG/jy1dN+CYS6rNefQx9UlrOLmsT5YZXm8ES49EDdhBFWh4mbJw8OduzIGSmfA
7BkbPl94/IFZhks6+4NxrRGxuD+CgaCNR666bBO4LMucdc1wdTamGx2rTm6UybnBCAntnWrbjIdZ
VA2KfLpOwc/Vut6suW3qM1Q2lxQpms3dw0f3RdDZmN+6BDi9PNHYDNtdnFqt5jIuW3dnly4oayKZ
mJXw4gx/CIhaKVhI5VMvOvjuDqxO70UkbbrzRSXAleWNCaB+wXz+UcTu1jDFbKcGdJomEdpE5KIX
O6xmfFy6f2ZqZID4Bj0BSFmwSrJsMe3RFNCpv/yZKREvWFqW7CKUjdY8Sb75RI1mKkMrOO/7xSBB
Ik92Lro2PBaq+tulP22e2ijKtp8pKI4wF1VhJ+CenB+d2w5aAdBLaS7JiJmn9etJbst9FSS9RSX6
tcFvAKcDq2cT/O+AqmW6sbDtip7WWAj0DjeJbw3jcfqkT9axsBJ0itD8EIZGhsCACeHDP7px4won
QYGwkzBWrKd4nEzMISEywQ5e077VoG3Szh+H1dkoW8gR0JVcKjgWkWJgHCq4BUGdJLZ65oehZQwZ
2oDZVaLsqYtLS0cO2c+Dzw7/cIa53hHHVyolN1plGeawOjSeqrSylqOmTG6aJk/b96SADH+925ui
KX5FHtUlU7wH7B0InymkT6PjaSOHMj+Y9FRKoV4Xt60Yqt7CBF9FRlYVUh2YtEWe+BY2DOgwwNV3
MR1vFhQrcEfj45Isl+HDO7iCCsiQXcvlOEu6JVL6TO3ViVO/Rn3n6w9pGEjzYhu5m0UNjwfo2rNu
HglwMgU9C23ryIhyYF3AUwCTKyfKvJR5AwYVWy+w916mkmo0zRgY2BxRvyQ9vyqvXKMgDq+G/1M2
fePN67CbxMAMXU1QbfvveUdqVsMX3ZQtLaXV16TkPCmThR30agNSwp00qAqjvQk7mtjyoN9e9DCI
Ov20luxtiTUV3cmGzf1kp4DEJ+PZ0siCI9OZ30im3Dg7Bd3rWJlagTfRZJtuIUVyjA4s4ktXKYBJ
bYtRbdDMsRfSN4kN7ZAm76YmUGJylHQoAZFBjiwzq1ix7K3HcqpAJDFW/847JyJITO3wHbET+Qer
91mOVl9Vhh9g3q7qyvnHDN41DRq8OYnxtfy4+uNLGCymrKPbldt8PFJ1e0fb2vXFIgYm94/HaofP
l4Gd8y0w8zSr+GBYHhQgTPtm8zbG1dKyAcfz4vTAaGYzBDh+pAKrOn4tBNNr51ViHP/Wzw8fcdu+
NcWTy3eLsdnSppPpfneNLFL3vh0r7t8r4cSmyTzt/dBHLSVegMBWh05d3vGVFYwzHq9GUFm1senI
nR0rPiVP4xNjjXexSUJrLwofhrqKnbSH0fgQ/C4fTJ9N9YNnb+QiJRH9GNrr85kNPgwxLyh+Fj8T
FdYlMjmCBLkW63JoX5R+/vedTESbVh2+b2JRVralYzvCuZQAK33xipg8zQ/GsrMcCG8zDlJ1ZbNY
HMf3owbEyebWZSnYv7oLHJ7Szq0JFIGrj4qoyuSR2anEN1xR305n4DbTQNU+A+PFRfyYsDPvpFRr
ZnW1oyp4plBkIw5OHgUNp+n8ehzf2KzLXGtOsuHk5+oIKPgX0+awl37iwoWa2ZlbrIwr4OFHfxfD
lCFESHsheNiq1idqQiMKh+qt49VJYpTyu4yAhGsziTlF/TWQcg1sPiDiQGJyG10exkGbH57ugTL9
x5UbRSUnRc0Ik22+8gXadjNUeLO+0z1k/u05K+5cK/r60LJFRai6FtlBQvjHpyCxO3x6LPozq7a4
Q6PAex04oJ7aT1Pq5ew7la6DZ/9sVF+Eamv2EP7t8lKycQdBE/7UPHQmCm+CQq7rMKzoy4J7Potn
h59bhdteG1qmc66MUV6ogqEOpmAXIZOwld0EVwwW28DjcfiHybLpUYZzgeVvQXgPNnTBYJhZb611
MpNMeprGDqP7oa80GDUZH9IGLPM1l/wLHDqk3ZzOd7fM/+Atly0RqmuT7aZfOu27Ka6MpKvhPWCs
vv9X/Z2xu7oMmDquoACsjA61jjk91byQ6FvIL9kOWo0XqOW8hB6cm8D+MGC7ztW4YJ5K3vmJFP7T
AQLaTKzxF5hXQcvy0kXuoTZdzdsrqAyIO/xeWdxmskazlpP2VkHIJkiKZl+3bz5VJVhI/tIqecDz
OTNkYQpBcTdnxW5o3LYuE307O7j7wAqGRWfEi750p7dhPFe1jNJlwggnCGkG3dYGwtGosh0q31ZM
xb14uNxOChvozXVdKvUBJEw4Izaa1igVsZSm/wlmJjmsoyalWJ9KhtSDOi53brXeN26sh3fC3txD
MxDDadVDqaBKqGaRdwObHSSc727tsKTAntZJxHAO8J0m1qq7a+iWgxr/yG3Xdx1LN5dIu7jgrdg2
zuQnqE3vGlqjZB5ui9WMv2HrOBCBtJ+5DY10baRAppzmRfdes9nDPRknVHSkTrteQVdVE8qq8Jm0
JvfZC9RFANH8NxTOPKCo3142q9ljJVDEBigmReMuW8173ord1B20THORmcZBSJgCtXSWLE+W5XV/
0WDP2nzvjeUfnmi0LdrBkQD+xjILBXSYz+vqBFtxt9Wf26ULEl38SjKPl0OtZt//msJpgETfwJyq
zzkHY7CIB6VGPIZ39LdabLMZzP9l8cBB/BJC1KSbqgnNeOB+24Ndb/gukeXCh0QJcE+5ejn6YH5j
zseJBix7LpRtxobcw+KswpZs3mECcj9Pv4D0brwdTPBCCXPwtA6n8oQT5wxHM2VxiDZ+bRyckmlY
YLiPWJqBEAKo93hgY3eJFP0Uj1MPDSuINLFAcCcmIIFwqeENrVYr6GNgXVyBitm+eSOLIgk7mnt1
zAnPk1TD5ASDbV5eMp3ZPOu7LLM2Xum3Dhpp7kxQO8zNpes1cHBbELbu4J9VMCgrdVVZ+9UJ7L8N
T8vN56MbkIyo3NALgjkIOs0vhFPt/yVu3oWldRmvlOahiUCBPGZQkuXIBq17ZXjOFQYeae+Q+qFQ
5FJnH/6nYMUko2JRWemb5zI1xsh7PUQznkidwJ5BQGgjsnxerWvFwNwBI6pcoqeH8+GdcerYCwWE
LEfWLY8zkKqRPa7JL8hhwPgYkroSCV7ZRQtgLeHy3kTJDWQhdAZ7tQ+ObxPwAPkObganAwIrtN6F
+kDSdM1lSSwNliF5puqX0v8prr6Upy1hxLjd4Fv0c/FC8lR9lBZ04tK6g1RBO6r6QhrXkNlIYA1P
XSvteYWEWgF5zexvJUT3Ja5z/Ay4Us2LBAmYNtKgxMTszNjZvy9l/WimSCNg5yFi9PZvC7dhr9z6
0/QGHIOg1oJwgTg1Py/lXIptYsEpbHUPWPJa7f2icva7KZy5+Bu7AfHJkhfecYJnITTAGb7akal0
YS1cSG4NZKsP0MzHqGQWzJk0N2TTqqfD8+RQlB9iVUnaFhQ3MR+i2vpuLbv+W9ZGlRWP6NpP2Bc/
qe7xzhea12pTVG6MBesnB77TetsbtqbNy6wQ3CSMxE+Mvevfy8INYvPdmDsV/ygvM/UcIevpFnHG
R1ivd/K6RZENZJNI8cAPPwuGsQ0puoSeaeig06tJGRVxxDQnlkWWaF3wCFyEh7/yhRISVA4KKe8/
3H+tvEonU0i1dYTlmYgfoH4ZFKUIeyBQuilHuBz1aaz7JPguPJWHewbh2QbVdoN6/bqkAy3ndtjz
dVoug4IkLzk1j/JEaALjWjEQ0E5KbGwQKItg2QzdL2E4sa8V81046jsn9DONX7vVUHPvHdDNXiwS
76/YTxdSlHd6SSX4ecgBBliTuK3DkveOWOhwsnkhToWSZ0Hc8oXnyZq9CPg+qRXmFIG/qLcjjfp/
PMherRTLYTNhNV3y4SGrXplCCIxtEL0LphKETQOPhfrzPr8zIVX9wo8hzPHkOyT1TKDjXm6hNxZz
gKC88syVWIps9GDjM5dgN7wXyTJiBQqnBRmb4PxsLJLSHUQ6C3dUvAfyE/0mpYeYzCZj3aEhdMfJ
DupLOciONEzpSTYG7DmhkJ6XmnoBHa3CTJLX/4nTMYUc7GSdOmfuc0NGt+eniLsqGoMOFKuyvoHe
KbGoIPNo8qnHagd80ajWkV9LW5l5HS3mJ7hnd4VmzgxOOIDl1SbaXUAtZarvoF5+uFAf7DE6d3R6
fbL0mEpzN1wfeSzQ+GZTyz9Nftepyvf7DAD0a5x2YUKpv+Qq+WiKjNKpqjnp+cJZUkDhhvG4qNfZ
GkwH5BCHNEsygD5NWIHdc3Xad1m5Xt7wUaM9VrRoVuFisid1D4ct5PoAqnyD6x3/uEWopa458Vi0
4/VyEhKrE6sd1+sitOnPXUgKHevZbJ1yGsdwnM8IXquqda3UULUpYDiUfdb6KO1mlZB7sKDmDe7P
oNxuIo1KupVz3xsq5aTtvIuWiVKVZ7FE5IKhdGISQCHeJjLokWPHqEfjcNktyLrvgwthaudvnmKO
Tn5li4Nf95QarXSxesWjoVcjzWe1arQskjjfNucnGEv/rmcJT5IRb69ZA9wgEOX1mepfjqfeYXOJ
y3Dyr7hcrPITcCB8DPVtIVImtqPDAZPcQDbBIBCl+ffl7AfCd7bAb8Fo+Ej+CubK0JVK7IWSTnc2
INnd5uo20f1NWvsAb1vFa2sIER9TEchSP6Jk1LpHXkS/H0THTibaJ7URZcf8tA2v6eFjxq+0+Ixq
nSK5o/KTW6BijmqYOl8/nbpy+CrNqYb2ayjwZPg9g167ck1T94iBFUhVa56J8SUSj/WiLGBcthVk
rlc2u0YOqjQohBsuZ9IMlb7yVaYENKA/9KjYvRB06Il3kOrnff/gAb8lF78FrCb4af/htgLrCNSu
KQlwD8dien4rLQV5t3K5yhStZ8GsoqnUJTM9TGj+/O2mw89JMTdB5fCTtvFS8LOmLaFb8xlKQfa7
3xbZM24pb1JcJQOrrliW2ydUBUYH2I1rJ1yw+GKaUj311g5gTU8rO8Qu8rTLUUQ45Pp/WWjPbFhS
JSZXuJLWOrR7DY4rvL/7C/sjjxCVdS+Dc9ZOhQGWNbXeOAB448fCJDnsMLm0s4PuuZAUpNMl8l8j
H0Cc56HyKSluB02OSLKM3keKSaxadkE2Cwshhz7YPNBN2toCj8XHUeT2WjkU7YNivHCb4r9eO/s7
vsTvT4e23Nd7lI7kVIy/+5vhQQ0AJTe/2+K78MGugr81WiuKMqAKI0WIrBlSU7dAOp9oKbN2Txsr
NJ5HpG0WSrJfrRyoPvWwBYOIbwXkanNcBCvMe0Ts3JXVyIWYxV33Ku2znkqoc19X5olpjnqrMpCt
fA4c635d0t2282XonoGSFOhQyZN2d0ksuSJy+w4iMy3xWpl8Pu9/LbisIkhp1D69EDNOLcViK7lS
IoHV/YVFyiSS1+RPj+0QwMC94zFxtfWDtPC2p4lIiN9VwHhP+evvcIkLPgOJt4YJtGwkDJ/Zkn+C
PAiGG/yCV/hgw8VG5phazmrw/qdh/r/3GtbDMhtXEYn6rFJ0YeSuq35YBwSWucZpugA1l9J2ckue
CfBWnfPuay8JzdsofPaLueobbTaOjM57l3dGjqIrg/qCYz0cLKo5238AflMv7NLDELTOYGxQhRGe
xuHArKBTUX8+TsFDvWFLD5i9iofIbBAc//mhw4Vd/y7n5FpYggzS64Y52I3YDcyU9pl9fVJiEEWT
AsfaRyebsn7VLGV5os5vu1FXkp5d0DZ+h3OBffrIw9I0VPvkoNIPvwN1VxKvB+NEInzhH+rJODoR
6+GP+6M63GlZ4U3tJGYYJRNl2WMD194wxDfINBCcesSMmbjlUNvnIaO6cGB++DPoaGhirznYk3vo
nR0Sd/vPZndNIF5/msmrLPVId6YqNxpJikzZRYHpZKCELD69muANCvnFnlo=
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
