`timescale 1ns / 1ps

module ma_3(
    input a,b,c,
    output y
    );
assign y= ((~a)&b&c)|(a&(~b)&c)|(a&b&(~c))|(a&b&c);

endmodule
