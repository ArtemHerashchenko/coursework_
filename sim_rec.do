if { [file exists "work"] } {
    vdel -all
}

vlib work


vlog  mem.v counter.v counter_mem.v coder.v coder_mem.v register.v transmitter.v reg_rec.v decoder.v reg_dec.v mem_rec.v rec.v rec_tb.v

vsim work.testbench

add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/enable
add wave -radix ASCII /testbench/test/test_rec1/rom_1
add wave -radix ASCII /testbench/test/test_rec/test_dec1/test_reg1/op1/block_1/elem_2/rom


run -all

wave zoom full


