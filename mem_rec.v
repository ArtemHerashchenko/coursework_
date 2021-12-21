module mem_rec (
    input i_clk,
    input [7:0] i_data
);
reg enable;
reg [4:0] o_counter;
reg [7:0] rom_1 [23:0];

initial begin
    enable = 0;
    o_counter = 0;
end

always @(i_data) begin
    if (i_data != 0) begin
        enable = 1;
    end
end

always @(posedge i_clk) begin
    if (enable) begin
        rom_1[o_counter] <= i_data;
        $writememh ("rom_res.hex", rom_1);
    end
end

always @(posedge i_clk) begin
    if (enable) begin
        if (o_counter == 24) begin
            o_counter <= 0;
            enable = 0;
        end
        else begin
            o_counter <= o_counter + 1'b1;
        end    
    end

end

endmodule