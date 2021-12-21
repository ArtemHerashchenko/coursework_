module transmitter (
    input i_clk,
    input i_rst_n,
    input enable,
    output [19:0] o_data
    
);

wire [19:0] data;
    
coder_mem op1(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .o_data(data)
);

register op2(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .enable(enable),
    .i_data(data),
    .o_data(o_data)
);

endmodule