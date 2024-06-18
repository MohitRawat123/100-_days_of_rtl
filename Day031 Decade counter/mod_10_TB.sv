`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module mod_10_TB();
    logic clk;
    logic [1:0]count;
    mod_10_counter AA(count,clk);
    initial
    begin
    clk=0;
    end
    always #5clk=~clk;
endmodule
