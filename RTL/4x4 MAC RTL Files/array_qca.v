`timescale 1ns / 1ps

module array_qca(a,b,p);
//inputs
input [3:0]a,b;
//outputs
output [7:0]p;

//wires
wire [39:0]w;
  
assign w[0]=a[0]&b[0];
assign w[1]=a[1]&b[0];
assign w[2]=a[2]&b[0];
assign w[3]=a[3]&b[0];

assign w[4]=a[0]&b[1];
assign w[5]=a[1]&b[1];
assign w[6]=a[2]&b[1];
assign w[7]=a[3]&b[1];

assign w[8]=a[0]&b[2];
assign w[9]=a[1]&b[2];
assign w[10]=a[2]&b[2];
assign w[11]=a[3]&b[2];

assign w[12]=a[0]&b[3];
assign w[13]=a[1]&b[3];
assign w[14]=a[2]&b[3];
assign w[15]=a[3]&b[3];
assign p[0]=w[0];
  
//full adders instatiations
qca_fa a17(1'b0,w[1],w[4],w[16],w[17]);
qca_fa a18(1'b0,w[2],w[5],w[18],w[19]);
qca_fa a19(1'b0,w[3],w[6],w[20],w[21]);

qca_fa a20(w[8],w[17],w[18],w[22],w[23]);
qca_fa a21(w[9],w[19],w[20],w[24],w[25]);
qca_fa a22(w[10],w[7],w[21],w[26],w[27]);

qca_fa a23(w[12],w[23],w[24],w[28],w[29]);
qca_fa a24(w[13],w[25],w[26],w[30],w[31]);
qca_fa a25(w[14],w[11],w[27],w[32],w[33]);

qca_fa a26(1'b0,w[29],w[30],w[34],w[35]);
qca_fa a27(w[31],w[32],w[35],w[36],w[37]);
qca_fa a28(w[15],w[33],w[37],w[38],w[39]);

//output assignments
assign p[1]=w[16];
assign p[2]=w[22];
assign p[3]=w[28];
assign p[4]=w[34];
assign p[5]=w[36];
assign p[6]=w[38];
assign p[7]=w[39];

endmodule
