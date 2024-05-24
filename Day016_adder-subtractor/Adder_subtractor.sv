`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Adder_subtractor(a,b,cin,cout,sum

    );
    input logic [3:0]a,b;
    input logic cin;
    output logic [3:0]sum;
    output logic cout;
    wire c1,c2,c3,w1,w2,w3,w4;
    xor a1(w1,b[0],cin);
    xor a2(w2,b[1],cin);
    xor a3(w3,b[2],cin);
    xor a4(w4,b[3],cin);
    adder s1(a[0],w1,cin,c1,sum[0]);
    adder s2(a[1],w2,c1,c2,sum[1]);
    adder s3(a[2],w3,c2,c3,sum[2]);
    adder s4(a[3],w4,c3,cout,sum[3]);
endmodule
