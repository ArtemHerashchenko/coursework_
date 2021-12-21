if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem.v counter.v counter_mem.v coder.v coder_mem.v coder_mem_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave /testbench/data
add wave -radix ASCII /testbench/test_1/block_1/elem_2/o_data

run -all

wave zoom full


