`timescale 1ns / 1ps

module top_mac_array_mg(a,b, acc, clk, reset);

input [3:0] a,b;

input clk, reset;

output [8:0] acc;

reg [8:0] acc;

wire [7:0] p;

mac_array_mg u0(a,b,clk,p);

always@(posedge clk) begin

if(reset)

acc <= 8'b00000000;

else

acc <= acc + p;

end

endmodule
