`timescale 1ns / 1ps

module Full_Subtractor(a,b,bin,d,bout

    );
    input logic a,b,bin;
    output logic d,bout;
    assign d=a^b^bin;
    assign bout=(~a&bin)|(~a&b)|(b&bin);
endmodule
