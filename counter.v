module counter (    //module done
    input i_clk,
    input i_rst_n,
    input enable,
    output reg [4:0] o_counter
);

always @(posedge i_clk, negedge i_rst_n) begin
    if (enable) begin
        if (~i_rst_n) begin
            o_counter <= 0;
        end
        else if (o_counter == 24) begin
            o_counter <= 0;
        end
        else begin
            o_counter <= o_counter + 1'b1;
        end    
    end

end
    
endmodule