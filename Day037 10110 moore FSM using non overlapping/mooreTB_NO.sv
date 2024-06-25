`timescale 1ns / 1ps


module mooreTB_NO(

    );
     logic in,clk,rst;
    logic out;
    moore_10110_N_Oping AA(clk,rst,in,out);
     initial
     begin
     clk=0;
     rst=1;
     in=0;
     #60
     rst=0;
    #40 in=1;
    #40 in=0;
    #40 in=1;
    #40 in=1;
    #40 in=0;
     end
    always #20 clk=~clk;
endmodule

