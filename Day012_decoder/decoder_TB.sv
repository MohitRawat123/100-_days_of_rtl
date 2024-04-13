`timescale 1ns / 1ps

module decoder_TB(

    );
    logic [1:0]din;
    logic [3:0]dout;
    decoder AA(din,dout);
    initial
    begin
    din=2'b00;#20;
    din=2'b01;#20;
    din=2'b10;#20;
    din=2'b11;#20;
   $finish;
   end
endmodule
