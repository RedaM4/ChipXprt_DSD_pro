#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Dec 12 16:46:07 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 15a5d3e3610840759698bbb890d52532 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Rx_top_tb_behav xil_defaultlib.Rx_top_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 15a5d3e3610840759698bbb890d52532 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Rx_top_tb_behav xil_defaultlib.Rx_top_tb xil_defaultlib.glbl -log elaborate.log

