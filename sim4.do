if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem.v counter.v counter_mem.v coder.v coder_mem.v register.v transmitter.v transmitter_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave -radix ASCII /testbench/test/op1/block_1/elem_2/o_data
add wave -radix unsigned /testbench/test/op1/block_1/elem_1/o_counter
add wave -radix unsigned /testbench/test/op1/block_2/o_data
add wave -radix unsigned /testbench/data


run -all

wave zoom full


