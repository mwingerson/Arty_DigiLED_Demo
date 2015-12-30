@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto c319e07bfa13440ebfd29b029d48c75e -m64 --debug typical --relax --mt 2 -L axi_lite_ipif_v3_0_3 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_10 -L xil_defaultlib -L interrupt_control_v3_1_3 -L axi_gpio_v2_0_9 -L microblaze_v9_5_3 -L lmb_v10_v3_0_7 -L lmb_bram_if_cntlr_v4_0_7 -L blk_mem_gen_v8_3_1 -L mdm_v3_2_4 -L proc_sys_reset_v5_0_8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_7 -L fifo_generator_v13_0_1 -L axi_data_fifo_v2_1_6 -L axi_crossbar_v2_1_8 -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_behav xil_defaultlib.tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
