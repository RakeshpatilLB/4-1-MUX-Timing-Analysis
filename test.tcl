read_liberty toy.lib
read_verilog MUX_4_1.v
link_design MUX_4_1
read_sdc top.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full
