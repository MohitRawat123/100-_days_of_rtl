`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module A_down_cntr_TB(

    );
    logic clk;
    logic rst;
    logic [3:0]count;
    A_dwn_cntr AA(clk,rst,count);
    initial
     begin
     clk=0;
     rst=0;
     #100;
     rst=1;
     #100
     rst=0;
     #175
     rst=1;
     #300
     rst=0;
     end
     always #10clk=~clk;
     
endmodule
