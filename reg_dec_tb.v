`timescale 1ns / 1ps
module testbench;

parameter PERIOD = 20;
reg clk, reset, enable;
wire [7:0] data;

reg_dec test(
    .i_clk(clk),
    .i_rst_n(reset),
    .enable(enable),
    .o_data(data)
);

initial begin
    clk = 0;
    forever #(PERIOD/2) clk = ~clk;
end

initial begin
    enable = 1;
end

initial begin
    reset = 1;
    #15 reset = 0;
    #5 reset = 1;
    #500 reset = 1;
end

initial begin
    #1000 $stop;
end

endmodule