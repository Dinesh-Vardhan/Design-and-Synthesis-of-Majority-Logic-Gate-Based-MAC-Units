`timescale 1ns / 1ps

module mac_lad(a,b,clk,d);

 input [3:0] a,b;
 input clk;
 output [7:0] d;
 //output [8:0] z;
 wire [8:1]q;
 wire [7:0] d1,q1;
 
   
  array1 u1 (a,b,d1);
  
  register u2 (clk,d1,q1);
  
  assign d = d1;
  
 ladner_fischer u3 (q1,q1,1'b0,q[7:1],q[8]);

  
endmodule
