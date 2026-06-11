`timescale 1ns / 1ps

module fulladder(
    input a,b,cin,
	 output s,c
    );

assign s=a^b^cin;
assign c=(a&b)|(b&cin)|(cin&a);
endmodule
