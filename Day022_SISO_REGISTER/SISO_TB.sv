`timescale 1ns / 1ps

module SISO_TB(

    );
   logic si,clk;
   logic so;
   SISO AA(clk,si,so);
   initial
   begin
   si=0;
   clk=0;
  #50;si=1;
  #50;si=0;
  #50;si=1;
   end
   always #25 clk=~clk;
endmodule
