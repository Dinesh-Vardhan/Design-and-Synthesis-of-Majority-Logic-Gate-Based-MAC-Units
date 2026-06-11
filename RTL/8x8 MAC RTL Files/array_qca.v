`timescale 1ns / 1ps

module array_qca(a,b,p);
input  [7:0] a,b;
output [15:0] p;

wire [15:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7;
wire [15:0] s1, s2, s3, s4, s5, s6;
wire c1, c2, c3, c4, c5, c6, c7;

// Partial products
assign pp0 = b[0] ? {8'b0, a}        : 16'b0;
assign pp1 = b[1] ? ({8'b0, a} << 1) : 16'b0;
assign pp2 = b[2] ? ({8'b0, a} << 2) : 16'b0;
assign pp3 = b[3] ? ({8'b0, a} << 3) : 16'b0;
assign pp4 = b[4] ? ({8'b0, a} << 4) : 16'b0;
assign pp5 = b[5] ? ({8'b0, a} << 5) : 16'b0;
assign pp6 = b[6] ? ({8'b0, a} << 6) : 16'b0;
assign pp7 = b[7] ? ({8'b0, a} << 7) : 16'b0;

// Reduction path using MLG full adders
adder16_mlg A1(pp0, pp1, 1'b0, s1, c1);
adder16_mlg A2(s1,  pp2, 1'b0, s2, c2);
adder16_mlg A3(s2,  pp3, 1'b0, s3, c3);
adder16_mlg A4(s3,  pp4, 1'b0, s4, c4);
adder16_mlg A5(s4,  pp5, 1'b0, s5, c5);
adder16_mlg A6(s5,  pp6, 1'b0, s6, c6);
adder16_mlg A7(s6,  pp7, 1'b0, p,  c7);

endmodule


module adder16_mlg(
    input  [15:0] a,
    input  [15:0] b,
    input         cin,
    output [15:0] sum,
    output        cout
);

wire [16:0] c;
assign c[0] = cin;

genvar i;
generate
    for(i=0; i<16; i=i+1) begin : FA_CHAIN
        qca_fa fa_i(
            .a(a[i]),
            .b(b[i]),
            .cin(c[i]),
            .sum(sum[i]),
            .cout(c[i+1])
        );
    end
endgenerate

assign cout = c[16];

endmodule
