`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module jhonson_cntr_tb(

    );
     logic clk,rst;
    logic [3:0]d;
    jhonson_counter AA(clk,rst,d);
    initial
    begin
    clk=1'b0;
    rst=1;
    #30;
    rst=0;
    end
    always #10clk=~clk;
endmodule

