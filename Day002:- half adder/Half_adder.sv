`timescale 1ns / 1ps

module Half_adder(a,b,cin,sum,carry

    );
    input logic a,b,cin;
    output logic sum,carry;
    assign sum=a^b^cin;
    assign carry=(a&b)|(b&cin)|(cin&a);
endmodule
