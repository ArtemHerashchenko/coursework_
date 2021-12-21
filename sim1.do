if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem.v counter.v counter_mem.v counter_mem_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave -radix ASCII /testbench/data
add wave -radix unsigned /testbench/test/o_counter

run -all

wave zoom full


