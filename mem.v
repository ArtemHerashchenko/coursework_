module mem (     //module done
    input i_clk,
    input [4:0] i_addr,
    input enable,
    output reg [7:0] o_data
);

reg [7:0] rom [23:0];
initial $readmemh ("rom_data.hex", rom);

always @(posedge i_clk) begin
    if (enable) begin
         o_data <= rom[i_addr];
    end
    else begin
        o_data = 8'bz;
    end
end
    
endmodule