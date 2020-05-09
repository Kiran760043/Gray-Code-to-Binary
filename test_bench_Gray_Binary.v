//////////////////////////////////////////////////////////////////////////////////
// Design Name: Test Bench for Gray code to Binary converter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_bench_Gray_Bin();

    //inputs for DUT
       reg [3:0] G;
    //outputs from DUT
       wire A;
       wire B;
       wire C;
       wire D;



    Gray_Bin DUT (.G(G),.A(A),.B(B),.C(C),.D(D));

    initial
        begin
            $display($time,"<< Simulation Results >>");
            $monitor($time,"G=%b, D=%b, C=%b, B=%b, A=%b",G,D,C,B,A);
        end

    initial
        begin
            G[3] = 0; G[2] = 0; G[1] = 0; G[0] = 0;
            #2;
            G[3] = 0; G[2] = 0; G[1] = 0; G[0] = 1;
            #2;
            G[3] = 0; G[2] = 0; G[1] = 1; G[0] = 1;
            #2;
            G[3] = 0; G[2] = 0; G[1] = 1; G[0] = 0;
            #2;
            G[3] = 0; G[2] = 1; G[1] = 1; G[0] = 0;
            #2;
            G[3] = 0; G[2] = 1; G[1] = 1; G[0] = 1;
            #2;
            G[3] = 0; G[2] = 1; G[1] = 0; G[0] = 1;
            #2;
            G[3] = 0; G[2] = 1; G[1] = 0; G[0] = 0;
            #2;
            G[3] = 1; G[2] = 1; G[1] = 0; G[0] = 0;
            #2;
            G[3] = 1; G[2] = 1; G[1] = 0; G[0] = 1;
            #2;
            G[3] = 1; G[2] = 1; G[1] = 1; G[0] = 1;
            #2;
            G[3] = 1; G[2] = 1; G[1] = 1; G[0] = 0;
            #2;
            G[3] = 1; G[2] = 0; G[1] = 1; G[0] = 0;
            #2;
            G[3] = 1; G[2] = 0; G[1] = 1; G[0] = 1;
            #2;
            G[3] = 1; G[2] = 0; G[1] = 0; G[0] = 1;
            #2;
            G[3] = 1; G[2] = 0; G[1] = 0; G[0] = 0;
            #2;
            $finish;
     end
endmodule
