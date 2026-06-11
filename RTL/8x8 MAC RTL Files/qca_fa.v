`timescale 1ns / 1ps

module qca_fa(a,b,cin,sum,cout
    );
input a,b,cin;

output sum,cout;

wire i0,i1,m0,m1;

assign i0=~cin;
mg u1(a,b,i0,m0);

mg u2(a,b,cin,m1);


assign i1=~m1;
mg u4(m0,i1,cin,sum);

assign cout=m1;

endmodule
