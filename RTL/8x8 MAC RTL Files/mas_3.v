`timescale 1ns / 1ps

module mas_3(
    input a,b,c,
    output y
    );

assign y= ((~a)&(~b)&c)|((~a)&b&(~c))|(a&(~b)&(~c))|(a&b&c);
endmodule
