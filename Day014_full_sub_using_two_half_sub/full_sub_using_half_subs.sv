`timescale 1ns / 1ps

module full_sub_using_half_subs(a,b,bin,d,bout

    );
    input logic a,b,bin;
    output logic d,bout;
    logic w1,w2,w3,w4,w5;
    xor(w1,a,b);
    not(w2,w1);
    and(w4,w2,bin);
    xor(d,w1,bin);
    not(w3,a);
    and(w5,w3,b);
    or(bout,w4,w5);
endmodule
