`timescale 1ns / 1ps
module testbench;

parameter PERIOD = 20;
reg clk, reset, enable;
reg [19:0] i_data;
wire [19:0] o_data;

register test_reg(
    .i_clk(clk),
    .i_rst_n(reset),
    .enable(enable),
    .i_data(i_data),
    .o_data(o_data)
);

initial begin
    enable = 0;
    #20 enable = 1;
end

initial begin
    i_data = 0;
    #20 i_data = 20'b00000000001010101000;
    #20 i_data = 20'b00000000000000001000;
    #20 i_data = 20'b00000000001011101000;
    #20 i_data = 20'b00000000000010111000;
    #20 i_data = 20'b00000000000010101000;
    #20 i_data = 20'b00000000001010101000;
    #20 i_data = 20'b00000011101011101000;
    #20 i_data = 20'b00000000001010101000;
    #20 i_data = 20'b00000000000000001000;
    #20 i_data = 20'b00000000000011101000;
    #20 i_data = 20'b00000000111010111000;
    #20 i_data = 20'b00000011101110111000;
    #20 i_data = 20'b00001110101010111000;
    #20 i_data = 20'b00000000000010111000;
    #20 i_data = 20'b00000000001011101000;
    #20 i_data = 20'b00000000000000111000;
    #20 i_data = 20'b00000000000000001000;
    #20 i_data = 20'b00000000001110111000;
    #20 i_data = 20'b00001110101010111000;
    #20 i_data = 20'b00000000001110101000;
    #20 i_data = 20'b00000000111010111000;
    #20 i_data = 20'b11101110111011101000;
    #20 i_data = 20'b10111011101110111000;
    #20 i_data = 20'b00001011101011101000;

end

initial begin
    clk = 0;
    forever #(PERIOD/2) clk = ~clk;
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