# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/aaron/school/EGR426/Wario/vgademo1_bars.cache/wt [current_project]
set_property parent.project_path /home/aaron/school/EGR426/Wario/vgademo1_bars.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_cache_permissions disable [current_project]
add_files /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/ip/typeface_1.coe
add_files -quiet /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
set_property used_in_implementation false [get_files /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
add_files -quiet /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp
set_property used_in_implementation false [get_files /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp]
read_vhdl -library xil_defaultlib {
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/Wario_logic.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/Debouncer.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/swing.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/vga_controller_640_60.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/merge.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/background.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/words.vhd
  /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/sources_1/new/wario_top.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/constrs_1/new/vgatop_pins.xdc
set_property used_in_implementation false [get_files /home/aaron/school/EGR426/Wario/vgademo1_bars.srcs/constrs_1/new/vgatop_pins.xdc]


synth_design -top vgademo1_bars_top -part xc7a35tcpg236-1


write_checkpoint -force -noxdef vgademo1_bars_top.dcp

catch { report_utilization -file vgademo1_bars_top_utilization_synth.rpt -pb vgademo1_bars_top_utilization_synth.pb }
