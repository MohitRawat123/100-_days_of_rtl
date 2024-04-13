`timescale 1ns / 1ps

module decoder3X8_TB(

    );
    logic [2:0]din;
    logic [7:0]dout;
    decoder3X8 dec(din,dout);
    initial
    begin
    din=3'b000;#20;
    din=3'b001;#20;
    din=3'b011;#20;
    din=3'b100;#20;
    din=3'b101;#20;
    din=3'b110;#20;
    din=3'b111;#20; 
    $finish;
    end
endmodule
