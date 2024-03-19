`timescale 1ns / 1ps
module gray_to_binary_TB(

    );
    reg [3:0]g;
    wire [3:0]b;
    gray_to_binary AA(g,b);
    initial
    begin
    $monitor("Gray-%b --> Binary-%b",g,b);
    g = 4'b1001;#20;
    g = 4'b1001;#20;
    g = 4'b1001;#20;
    g = 4'b1001;#20;
    end
endmodule
