`timescale 1ns / 1ps

module prefix(
    input [1:0] a,b,
    output [1:0] y
    );
ma_3 pp1(b[0],a[1],b[1],y[0]);
ma_3 pp2(a[0],a[1],b[1],y[1]);

endmodule
