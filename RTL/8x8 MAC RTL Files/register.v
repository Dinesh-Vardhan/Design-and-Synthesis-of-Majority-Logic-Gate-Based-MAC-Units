`timescale 1ns / 1ps

module register(clk,d,q);

input clk;
input [15:0] d;
output reg [15:0] q;

always @(posedge clk) begin
    q <= d;
end

endmodule
