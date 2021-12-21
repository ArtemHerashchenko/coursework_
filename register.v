module register (
    input i_clk,
    input i_rst_n,
    input enable,
    input [19:0] i_data,
    output reg [19:0] o_data
);

always @(posedge i_clk, negedge i_rst_n) begin
    if(~i_rst_n) begin
        o_data <= 0;
    end
    else begin
        if (enable) begin
            o_data <= i_data;
        end
        else begin
            o_data <= 20'bz;
        end
    end
end
    
endmodule