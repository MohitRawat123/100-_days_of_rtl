`timescale 1ns / 1ps


module PISO_TB(

    );
    logic [3:0]d;
    logic clk,mode;
    logic so;
    
    PISO  AA(d,mode,clk,so); 
    initial
    begin
    clk=0;
   d=4'b1001;
   mode=1;
   #50
   mode=0;
   end
   always #25clk=~clk;
endmodule
