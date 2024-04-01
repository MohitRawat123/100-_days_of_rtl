`timescale 1ns / 1ps

module b_to_e3_TB(

    );
    reg [3:0]bcd;
    wire [3:0]e3;
     bcd_to_excess3 AA(bcd,e3);
     initial
      begin
     $monitor("bcde-%b,e3-%b",bcd,e3);
      bcd= 4'b0000 ;
      bcd= 4'b0001 ;
      bcd= 4'b0010;
      bcd=4'b0011 ;
      bcd=4'b0100;
      bcd=4'b0101 ;
      bcd= 4'b0110 ;
      bcd= 4'b0111 ;
      bcd=4'b1000 ;
      bcd=4'b1001;
       end
endmodule
