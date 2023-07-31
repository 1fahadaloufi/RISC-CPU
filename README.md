# RISC-CPU

## About
This respository includes SystemVerilog code for both a single cycle RISC processor as well as a 5-stage pipelined version. 

Both CPU designs have an accompanying testbench thats runs the bubble sort algorithm on an array loaded in memory.  

Both source and mapped simulations were run to verify both of the designs, and the mapped verilog code was synthesized using an open source 45 nm cell library. 


## Tools
- `iverilog`: verilog compiler
- `yosys`: logic synthesis tool
- `gscl45nm`: open sourced 45 nm cell library
- `gtkwave`: waveform viewer for debugging 
- `verilator`: used for linting source code 

