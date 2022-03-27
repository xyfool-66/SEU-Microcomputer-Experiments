vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_8
vlib modelsim_lib/msim/c_reg_fd_v12_0_4
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vlib modelsim_lib/msim/xbip_addsub_v3_0_4
vlib modelsim_lib/msim/c_addsub_v12_0_11
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_8 modelsim_lib/msim/xbip_utils_v3_0_8
vmap c_reg_fd_v12_0_4 modelsim_lib/msim/c_reg_fd_v12_0_4
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_4 modelsim_lib/msim/xbip_pipe_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vmap xbip_addsub_v3_0_4 modelsim_lib/msim/xbip_addsub_v3_0_4
vmap c_addsub_v12_0_11 modelsim_lib/msim/c_addsub_v12_0_11
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_4 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/e6f0/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/7b8d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_4 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/c060/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_11 -64 -93 \
"../../../../Add_Sub_Block_Design.srcs/sources_1/bd/design_1/ipshared/1607/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_c_addsub_0_0/sim/design_1_c_addsub_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

