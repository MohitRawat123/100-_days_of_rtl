`timescale 1ns / 1ps


module PIPO_TB(

    );
    logic clk;
    logic [3:0]d;
    logic [3:0]q;
    PIPO AA(d,clk,q);
    initial
    begin
    clk=0;
   
    d=4'b1011;
    end
    always #10 clk=~clk;
endmodule
