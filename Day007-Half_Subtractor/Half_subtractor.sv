`timescale 1ns / 1ps

module Half_subtractor(a,b,diff,borr

    );
    input logic a,b;
    output logic  diff,borr;
    assign diff=a^b;
    assign borr=~a&b;
endmodule
