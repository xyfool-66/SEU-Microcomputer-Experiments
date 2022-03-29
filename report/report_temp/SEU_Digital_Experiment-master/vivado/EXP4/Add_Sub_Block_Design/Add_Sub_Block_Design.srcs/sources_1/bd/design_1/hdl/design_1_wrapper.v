//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Nov 29 23:02:14 2021
//Host        : TVJ-PC running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire [14:0]a;
  wire [14:0]b;
  wire ce;
  wire clk;
  wire [14:0]sum;

  design_1 design_1_i
       (.a(a),
        .b(b),
        .ce(ce),
        .clk(clk),
        .sum(sum));
endmodule
