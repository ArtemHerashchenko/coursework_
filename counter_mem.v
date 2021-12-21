module counter_mem (   //module done
    input i_clk,
    input i_rst_n,
    input enable,
    output [7:0] o_data
);

wire [4:0] o_counter;

counter elem_1(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .o_counter(o_counter)
);

mem elem_2(
    .i_clk(i_clk),
    .i_addr(o_counter),
    .enable(enable),
    .o_data(o_data)
);
    
endmodule