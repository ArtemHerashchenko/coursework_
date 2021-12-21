module reg_dec (
    input i_clk,
    input i_rst_n,
    input enable,
    output [7:0] o_data
);

wire [19:0] data;

reg_rec test_dec1(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .o_data(data)
);

decoder test_dec2(
    .i_clk(i_clk),
    .i_data(data),
    .o_data(o_data)
);
    
endmodule