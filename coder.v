module coder (
    input i_clk,
    input [7:0] i_data,
    input enable,
    output [19:0] o_data
);

reg [19:0] o_data_r;

assign o_data = o_data_r;

always @(posedge i_clk) begin
    if (enable) begin
        case (i_data)
            72: o_data_r = 20'b00000000001010101000; //H
            69: o_data_r = 20'b00000000000000001000; //E 
            82: o_data_r = 20'b00000000001011101000; //R 
            65: o_data_r = 20'b00000000000010111000; //A 
            83: o_data_r = 20'b00000000000010101000; //S 
            67: o_data_r = 20'b00000011101011101000; //C 
            78: o_data_r = 20'b00000000000011101000; //N 
            75: o_data_r = 20'b00000000111010111000; //K 
            79: o_data_r = 20'b00000011101110111000; //O 
            95: o_data_r = 20'b00001110101010111000; //_ 
            84: o_data_r = 20'b00000000000000111000; //T 
            77: o_data_r = 20'b00000000001110111000; //M
            68: o_data_r = 20'b00000000001110101000; //D
            57: o_data_r = 20'b11101110111011101000; //9
            49: o_data_r = 20'b10111011101110111000; //1
            43: o_data_r = 20'b00001011101011101000; //+      
            default: o_data_r <= 20'b0;
        endcase
    end
    else begin
        o_data_r = 20'bz;
    end
end
    
endmodule