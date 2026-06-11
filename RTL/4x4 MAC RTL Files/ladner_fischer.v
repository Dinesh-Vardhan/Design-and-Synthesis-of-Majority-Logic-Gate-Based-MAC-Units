`timescale 1ns / 1ps

module ladner_fischer(
    input [7:1] a,b,
    input cin,
    output [7:1] c ,
	 output [8:1] s
    );
	 wire c12,c14;
	 wire [6:1] c1;
	 wire [3:0] c2;
	 
	 assign c[1]=cin;
	 
	 assign c[2]=c12;
	 
	 assign c[4]= c14;
	 
ma_3 bk_1(a[1],b[1],cin,c12);

prefix bk10(a[3:2],b[3:2],c1[2:1]);

prefix bk11(a[5:4],b[5:4],c1[4:3]);

prefix bk12(a[7:6],b[7:6],c1[6:5]);


ma_3 bk_20(a[2],b[2],c12,c[3]);

ma_3 bk_21(c1[2],c1[1],c12,c14);

prefix bk21({b[6],c1[4]},{a[6],c1[3]},c2[1:0]);

prefix bk22({c1[6],c1[4]},{c1[5],c1[3]},c2[3:2]);


ma_3 bk_40(a[4],b[4],c14,c[5]);

ma_3 bk_41(c1[4],c1[3],c14,c[6]);

ma_3 bk_42(c2[1],c2[0],c14,c[7]);

ma_3 bk_43(c2[3],c2[2],c14,s[8]);

mas_3 bk_s1(a[1],b[1],c[1],s[1]);

mas_3 bk_s2(a[2],b[2],c[2],s[2]);

mas_3 bk_s3(a[3],b[3],c[3],s[3]);

mas_3 bk_s4(a[4],b[4],c[4],s[4]);

mas_3 bk_s5(a[5],b[5],c[5],s[5]);

mas_3 bk_s6(a[6],b[6],c[6],s[6]);

mas_3 bk_s7(a[7],b[7],c[7],s[7]);
endmodule
