set_property SRC_FILE_INFO {cfile:c:/workspace/Arty_DigiLED/Arty_DigiLED.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc rfile:../../../Arty_DigiLED.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:design_1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/workspace/Arty_DigiLED/Arty_DigiLED.srcs/constrs_1/new/constraints.xdc rfile:../../../Arty_DigiLED.srcs/constrs_1/new/constraints.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {led_out}]
