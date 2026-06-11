`timescale 1ns / 1ps

module top_mac_array_mg(a,b,acc,clk,reset);

input [7:0] a,b;
input clk, reset;

output [16:0] acc;
reg [16:0] acc;

wire [15:0] p;

mac_array_mg u0(a,b,clk,p);

always @(posedge clk) begin
    if(reset)
        acc <= 17'b0;
    else
        acc <= acc + p;
end

endmodule
