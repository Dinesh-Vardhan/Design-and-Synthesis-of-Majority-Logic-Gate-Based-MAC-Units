`timescale 1ns / 1ps

module mac_array_mg(a,b,clk,d);

 input [3:0] a,b;
 input clk;
 output [7:0] d;

 wire [7:0] d1,q1;
 
 array_qca u1(a,b,d1);
 register  u2(clk,d1,q1);
  
 assign d = q1;

endmodule
