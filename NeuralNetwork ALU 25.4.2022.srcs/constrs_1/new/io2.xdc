set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS33} [get_ports c]
set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports d]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports wr]
set_property -dict {PACKAGE_PIN E7 IOSTANDARD LVCMOS33} [get_ports {checkP[0]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {checkP[1]}]

## RGB LEDs
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {check[0]}]
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVCMOS33} [get_ports {check[1]}]
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS33} [get_ports {check[2]}]

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets c_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets wr_IBUF]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
