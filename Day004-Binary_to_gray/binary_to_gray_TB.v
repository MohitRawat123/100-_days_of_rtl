`timescale 1ns / 1ps

module binary_to_gray_TB(

    );
    reg [3:0]b;
    wire [3:0]g;
    Binary_to_gray AA(b,g);
   
    initial
    begin
    $monitor("Binary = %b --> Gray = %b", b, g);
    b = 4'b1011; #1;
    b = 4'b0111; #1;
    b = 4'b0101; #1;
    b= 4'b1100; #1;
    b= 4'b1111;
  end
endmodule
