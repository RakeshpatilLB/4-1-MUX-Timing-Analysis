create_clock -name CLK -period 1000 [get_ports {clk}]
set_input_delay 5 -clock CLK [get_ports {s0}]
set_input_delay 5 -clock CLK [get_ports {s1}]
set_input_delay 5 -clock CLK [get_ports {a}]
set_input_delay 5 -clock CLK [get_ports {b}]
set_input_delay 5 -clock CLK [get_ports {c}]
set_input_delay 5 -clock CLK [get_ports {d}]
set_output_delay 5 -clock CLK [get_ports {y}]

report_power
