`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module A_up_cntr_TB(

    );
    logic clk;
    logic rst;
    logic [3:0]count;
   A_up_cntr AA(clk,rst,count);
    initial
     begin
     clk=0;
     rst=0;
     #100;
     rst=1;
     #100
     rst=0;
     #215
     rst=1;
     #175
     rst=0;
     end
     always #10clk=~clk;
     
endmodule
