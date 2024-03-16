`timescale 1ns / 1ps

module Half_adder(a,b,sum,carry

    );
    input logic a,b;
    output logic sum,carry;
    assign sum=a^b;
    assign carry=a&b;
endmodule
