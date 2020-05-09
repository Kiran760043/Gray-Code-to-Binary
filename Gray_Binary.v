//////////////////////////////////////////////////////////////////////////////////
// Design Name: Gray code to Binary converter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module Gray_Bin(G,A,B,C,D);
    input  wire [3:0] G;
    output wire A;
    output wire B;
    output wire C;
    output wire D;

    assign D = G[3];
    assign C = G[3] ^ G[2];
    assign B = C    ^ G[1];
    assign A = B    ^ G[0];


endmodule
