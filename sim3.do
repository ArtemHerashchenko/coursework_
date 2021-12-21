if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  register.v register_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave /testbench/o_data
add wave /testbench/i_data

run -all

wave zoom full


