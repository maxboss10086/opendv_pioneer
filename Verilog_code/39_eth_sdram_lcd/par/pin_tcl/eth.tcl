# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II 64-Bit Version 13.1.0 Build 162 10/23/2013 SJ Full Version
# File: D:\project\eth_sdram_vga\par\eth.tcl
# Generated on: Mon Jun 25 14:22:56 2018

package require ::quartus::project


set_location_assignment PIN_L8 -to eth_rx_clk
set_location_assignment PIN_K8 -to eth_rx_data[3]
set_location_assignment PIN_F7 -to eth_rx_data[2]
set_location_assignment PIN_G5 -to eth_rx_data[1]
set_location_assignment PIN_F5 -to eth_rx_data[0]
set_location_assignment PIN_F6 -to eth_rxdv
set_location_assignment PIN_L6 -to eth_rst_n
set_location_assignment PIN_L4 -to eth_tx_en
set_location_assignment PIN_J6 -to eth_tx_clk
set_location_assignment PIN_L3 -to eth_tx_data[3]
set_location_assignment PIN_L7 -to eth_tx_data[2]
set_location_assignment PIN_K5 -to eth_tx_data[1]
set_location_assignment PIN_K6 -to eth_tx_data[0]
