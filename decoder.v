module decoder (
    input i_clk,
    input [19:0] i_data,
    output [7:0] o_data
);
    
reg [7:0] o_data_r;
reg enable;

initial begin
    enable = 1;
end

assign o_data = o_data_r;

always @(posedge i_clk) begin
    if (enable) begin
        case (i_data)
            20'b00000000001010101000: o_data_r = 72; //H
            20'b00000000000000001000: o_data_r = 69; //E 
            20'b00000000001011101000: o_data_r = 82; //R 
            20'b00000000000010111000: o_data_r = 65; //A 
            20'b00000000000010101000: o_data_r = 83; //S 
            20'b00000011101011101000: o_data_r = 67; //C 
            20'b00000000000011101000: o_data_r = 78; //N 
            20'b00000000111010111000: o_data_r = 75; //K 
            20'b00000011101110111000: o_data_r = 79; //O 
            20'b00001110101010111000: o_data_r = 95; //_ 
            20'b00000000000000111000: o_data_r = 84; //T 
            20'b00000000001110111000: o_data_r = 77; //M
            20'b00000000001110101000: o_data_r = 68; //D
            20'b11101110111011101000: o_data_r = 57; //9
            20'b10111011101110111000: o_data_r = 49; //1
            20'b00001011101011101000: begin
               o_data_r = 43;                        //+
               enable = 0;  
            end
                 
            default: o_data_r <= 20'b0;
        endcase
    end
    else begin
        o_data_r = 20'bz;
    end
end

endmodule