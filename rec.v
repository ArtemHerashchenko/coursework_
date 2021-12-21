module rec (
    input i_clk,
    input i_rst_n,
    input enable
);

wire [7:0] data;

reg_dec test_rec(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .o_data(data)
);

mem_rec test_rec1(
    .i_clk(i_clk),
    .i_data(data)
);
    
endmodule