## This file is a general .xdc for the ALINX AX7021 board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project
set_property PACKAGE_PIN A17 [get_ports btns_tri_i[0]]
set_property IOSTANDARD LVCMOS33 [get_ports btns_tri_i[0]]

set_property PACKAGE_PIN R7 [get_ports leds_tri_o[0]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_tri_o[0]]

set_property PACKAGE_PIN A16 [get_ports leds_tri_o[1]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_tri_o[1]]

set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rx_ctl}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_rxc}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_td[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_td[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_td[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_td[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_tx_ctl}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_txc}]

set_property PACKAGE_PIN J18 [get_ports {RGMII_rd[0]}]
set_property PACKAGE_PIN K18 [get_ports {RGMII_rd[1]}]
set_property PACKAGE_PIN J15 [get_ports {RGMII_rd[2]}]
set_property PACKAGE_PIN K15 [get_ports {RGMII_rd[3]}]
set_property PACKAGE_PIN K20 [get_ports {RGMII_rx_ctl}]
set_property PACKAGE_PIN K19 [get_ports {RGMII_rxc}]
set_property PACKAGE_PIN N17 [get_ports {RGMII_td[0]}]
set_property PACKAGE_PIN N18 [get_ports {RGMII_td[1]}]
set_property PACKAGE_PIN N19 [get_ports {RGMII_td[2]}]
set_property PACKAGE_PIN N20 [get_ports {RGMII_td[3]}]
set_property PACKAGE_PIN R21 [get_ports {RGMII_tx_ctl}]
set_property PACKAGE_PIN R20 [get_ports {RGMII_txc}]

