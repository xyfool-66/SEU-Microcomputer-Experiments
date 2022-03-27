create_clock -period 11.000 -name clk [get_ports clk]

set_input_delay -clock clk 2.000 [all_inputs]
set_input_delay -clock clk -min 1.500 [all_inputs]
set_output_delay -clock clk 0.500 [all_outputs]
set_output_delay -clock clk -min 0.200 [all_outputs]
