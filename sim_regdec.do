if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem.v counter.v counter_mem.v coder.v coder_mem.v register.v transmitter.v reg_rec.v decoder.v reg_dec.v reg_dec_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave -radix ASCII /testbench/data


run -all

wave zoom full


