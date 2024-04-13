`timescale 1ns / 1ps

module encoder8X3TB(

    );
    logic [7:0]din;
    logic [2:0]dout;
    encoder8X3 AA(din,dout);
    initial
    begin
    din=8'b00000001;#20;
    din=8'b00000010;#20;
    din=8'b00000100;#20;
    din=8'b00001000;#20;
    din=8'b00010000;#20;
    din=8'b00100000;#20;
    din=8'b01000000;#20;
    din=8'b10000000;#20;
    $finish;
    end
endmodule
