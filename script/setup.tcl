# This script sets up a Vivado project with all ip references resolved.
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -part xc7z020clg484-2 -force top 
#set_property parts xc7z010clg400-1
#set_property board_part em.avnet.com:microzed_7010:part0:1.0 [current_project]
set_property target_language verilog [current_project]
set_property default_lib work [current_project]
load_features ipintegrator
tclapp::install ultrafast -quiet

file delete -force ./ip
file mkdir ./ip

#read_ip ../source/spi_slave/spi_slave_mem/spi_slave_mem.xci
#upgrade_ip -quiet  [get_ips *]
#generate_target {all} [get_ips *]

source add_bd.tcl
generate_target {synthesis implementation} [get_files ./top.srcs/sources_1/bd/system/system.bd]
make_wrapper -files [get_files ./top.srcs/sources_1/bd/system/system.bd] -top
read_verilog ./top.srcs/sources_1/bd/system/hdl/system_wrapper.v

## Read the verilog source.
#read_verilog [glob ../source/spi_slave/spi_slave.v]
#read_verilog [glob ../source/top.v]

## Read the constraint files 
read_xdc ../source/system.xdc

close_project


