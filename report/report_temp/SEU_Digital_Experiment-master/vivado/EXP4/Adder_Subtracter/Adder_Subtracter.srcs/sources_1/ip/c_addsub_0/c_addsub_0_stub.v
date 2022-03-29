// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Nov 29 21:54:23 2021
// Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tvj/Documents/Verilog/SEU_Digital_Experiment/vivado/EXP4/Adder_Subtracter/Adder_Subtracter.srcs/sources_1/ip/c_addsub_0/c_addsub_0_stub.v
// Design      : c_addsub_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *)
module c_addsub_0(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[7:0],B[7:0],CLK,CE,S[7:0]" */;
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input CE;
  output [7:0]S;
endmodule
