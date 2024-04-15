`timescale 1ns / 1ps

module full_adder_using_half_adder(a,b,cin,sum,cout

    );
    input logic a,b,cin;
    output logic sum,cout;
    logic w1,w2,w3;
    xor(w1,a,b);
    and(w2,a,b);
    xor(sum,cin,w1);
    and(w3,cin,w1);
    or(cout,w2,w3);
endmodule
