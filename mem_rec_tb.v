`timescale 1ns / 1ps
module testbench;

parameter PERIOD = 20;
reg clk;
reg [7:0] data;

mem_rec test(
    .i_clk(clk),
    .i_data(data)
);

initial begin
    data = 0;
    #20 data = 72; //H
    #20 data = 69; //E
    #20 data = 82; //R
    #20 data = 65; //A
    #20 data = 83; //S
    #20 data = 72; //H
    #20 data = 67; //C 
    #20 data = 72; //H
    #20 data = 69; //E
    #20 data = 78; //N
    #20 data = 75; //K
    #20 data = 79; //O
    #20 data = 95; //_
    #20 data = 65; //A
    #20 data = 82; //R
    #20 data = 84; //T
    #20 data = 69; //E
    #20 data = 77; //M
    #20 data = 95; //_
    #20 data = 68; //D
    #20 data = 75; //K
    #20 data = 57; //9
    #20 data = 49; //1
    #20 data = 43; //+
end

initial begin
    clk = 0;
    forever #(PERIOD/2) clk = ~clk;
end

initial begin
    #1000 $stop;
end

endmodule