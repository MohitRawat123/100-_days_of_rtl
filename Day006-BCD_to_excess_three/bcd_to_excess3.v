`timescale 1ns / 1ps

module bcd_to_excess3(bcd,e3

    );
    input [3:0]bcd;
    output reg [3:0]e3;
    always @(*)
    begin
     case(bcd)
       4'b0000 :  e3=4'b0011;
       4'b0001 :  e3=4'b0100;
       4'b0010 :  e3=4'b0101;
       4'b0011 :  e3=4'b0110;
       4'b0100 :  e3=4'b0111;
       4'b0101 :  e3=4'b1000;
       4'b0110 :  e3=4'b1001;
       4'b0111 :  e3=4'b1010;
       4'b1000 :  e3=4'b1011;
       4'b1001 :  e3=4'b1100;
     endcase
    end
endmodule
