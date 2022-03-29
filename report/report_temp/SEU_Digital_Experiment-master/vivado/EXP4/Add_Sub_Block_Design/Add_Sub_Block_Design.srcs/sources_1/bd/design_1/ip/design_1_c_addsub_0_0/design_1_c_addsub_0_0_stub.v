// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Nov 29 23:03:28 2021
// Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tvj/Documents/Verilog/SEU_Digital_Experiment/vivado/EXP4/Add_Sub_Block_Design/Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_stub.v
// Design      : design_1_c_addsub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *)
module design_1_c_addsub_0_0(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[14:0],B[14:0],CLK,CE,S[14:0]" */;
  input [14:0]A;
  input [14:0]B;
  input CLK;
  input CE;
  output [14:0]S;
endmodule
