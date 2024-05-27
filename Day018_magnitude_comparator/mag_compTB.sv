`timescale 1ns / 1ps

module mag_compTB(

    );
    logic [3:0]a,b;
    logic g,l,e;
    magnitude_comparator AA(a,b,g,l,e);
    initial
    begin
    a=4'd3;b=4'd5;#20
    a=4'd12;b=4'd10;#20
    a=4'd7;b=4'd4;#20
    a=4'd3;b=4'd9;#20
    a=4'd6;b=4'd1;#20
    a=4'd14;b=4'd12;#20
    $finish;
    end
endmodule
