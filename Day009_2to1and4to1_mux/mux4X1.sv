`timescale 1ns / 1ps

module mux4X1(s0,s1,a0,a1,a2,a3,y

    );
    input logic s0,s1,a0,a1,a2,a3;
    output logic y;
    always @(*)
    begin
    case({s1,s0})
    2'b00 : y=a0;
    2'b01 : y=a1;
    2'b10 : y=a2;
    2'b11 : y=a3;
    endcase
    end
endmodule
