module coder_mem (
    input i_clk,
    input i_rst_n,
    input enable,
    output [19:0] o_data
);

wire [7:0] data;

counter_mem block_1(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .o_data(data)
);

coder block_2(
    .i_clk(i_clk),
    .i_data(data),
    .enable(enable),
    .o_data(o_data)
);

endmodule