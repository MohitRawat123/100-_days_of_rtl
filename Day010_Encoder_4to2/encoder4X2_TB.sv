`timescale 1ns / 1ps

module encoder4X2_TB(

    );
    logic [3:0]a;
    logic[1:0]y;
    encoder4X1 mux(a,y);
    initial
    begin
    a=4'b0001;#20;
    a=4'b0010;#20;
    a=4'b0100;#20;
    a=4'b1000;#20;
    $finish;
    end
endmodule
