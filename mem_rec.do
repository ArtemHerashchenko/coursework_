if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem_rec.v mem_rec_tb.v

vsim work.testbench

add wave /testbench/clk
add wave -radix ASCII /testbench/data
add wave -radix ASCII /testbench/test/rom_1


run -all

wave zoom full


