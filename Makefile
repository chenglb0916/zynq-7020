##########################################################################
# Author:
# Data  :
# Descp :
# ########################################################################

BUILD_DIR = ./build

dir:
	@echo
	test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)
	@echo

link:
	cd $(BUILD_DIR) && \
	ln -sf ../script/add_bd.tcl && \
	ln -sf ../script/setup.tcl && \
	ln -sf ../script/compile.tcl	

clean:
	cd $(BUILD_DIR) && \
	rm -rf *

setup:dir clean link
	cd $(BUILD_DIR) && \
	vivado -mode batch -source setup.tcl

compile:
	cd $(BUILD_DIR) && \
	vivado -mode batch -source compile.tcl
