`timescale 1ns / 1ps

module register(clk,d,q);

 input clk;
 input [7:0]d;
 output reg [7:0]q;
 
 always@ ( clk)
 
  begin 
  
     q = d;
  
  end
endmodule

