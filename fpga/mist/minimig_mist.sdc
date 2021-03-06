## Generated SDC file "constraints.sdc"

## Copyright (C) 1991-2011 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions
## and other software and tools, and its AMPP partner logic
## functions, and any output files from any of the foregoing
## (including device programming or simulation files), and any
## associated documentation or information are expressly subject
## to the terms and conditions of the Altera Program License
## Subscription Agreement, Altera MegaCore Function License
## Agreement, or other applicable license agreement, including,
## without limitation, that your use is for the sole purpose of
## programming logic devices manufactured by Altera and sold by
## Altera or its authorized distributors. Please refer to the
## applicable agreement for further details.


## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 11.1 Build 216 11/23/2011 Service Pack 1 SJ Web Edition"

## DATE "Fri Jul 06 23:05:47 2012"

##
## DEVICE "EP3C25E144C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk_27} -period 37.037 -waveform { 0.000 18.500 } [get_ports {CLOCK_27[0]}]
create_clock -name {SPI_SCK} -period 1.000 -waveform { 0.000 0.500 } [get_ports {SPI_SCK}]
create_clock -name {amiga_clk:amiga_clk|clk7_cnt[1]} -period 1.000 -waveform { 0.000 0.500 } [get_registers {amiga_clk:amiga_clk|clk7_cnt[1]}]
create_clock -name {user_io:user_io|kbd_mouse_strobe} -period 1.000 -waveform { 0.000 0.500 } [get_registers {user_io:user_io|kbd_mouse_strobe}]

#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks
create_generated_clock -name sdclk_pin -source [get_pins {amiga_clk|amiga_clk_i|altpll_component|pll|clk[2]}] [get_ports {SDRAM_CLK}]

#**************************************************************
# Set Clock Latency
#**************************************************************


#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty;

#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -clock sdclk_pin -max 6.4 [get_ports SDRAM_DQ*]
set_input_delay -clock sdclk_pin -min 3.2 [get_ports SDRAM_DQ*]

#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -clock sdclk_pin -max 1.5 [get_ports SDRAM_*]
set_output_delay -clock sdclk_pin -min -0.8 [get_ports SDRAM_*]

#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -from [get_clocks {sdclk_pin}] -to [get_clocks {amiga_clk|amiga_clk_i|altpll_component|pll|clk[2]}] -setup -end 2


#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
