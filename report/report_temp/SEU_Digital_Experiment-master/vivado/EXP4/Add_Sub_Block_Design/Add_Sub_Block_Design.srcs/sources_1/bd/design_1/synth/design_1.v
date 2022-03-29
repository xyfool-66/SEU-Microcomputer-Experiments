//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Nov 29 23:02:14 2021
//Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1.hwdef" *) (* core_generation_info = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) 
module design_1
   (a,
    b,
    ce,
    clk,
    sum);
  input [14:0]a;
  input [14:0]b;
  input ce;
  input clk;
  output [14:0]sum;

  wire [14:0]a_1;
  wire [14:0]b_1;
  wire [14:0]c_addsub_0_S;
  wire ce_1;
  wire clk_1;

  assign a_1 = a[14:0];
  assign b_1 = b[14:0];
  assign ce_1 = ce;
  assign clk_1 = clk;
  assign sum[14:0] = c_addsub_0_S;
  design_1_c_addsub_0_0 c_addsub_0
       (.A(a_1),
        .B(b_1),
        .CE(ce_1),
        .CLK(clk_1),
        .S(c_addsub_0_S));
endmodule
