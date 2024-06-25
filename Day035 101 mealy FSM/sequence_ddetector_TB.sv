`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module sequence_ddetector_TB(

    );
    logic in,clk,rst;
    logic out;
     sequence_detector AA(in,out,clk,rst);
     initial
     begin
     clk=0;
     rst=1;
     in=0;
     #20
     rst=0;
     #100
     in=1;
     #15
     in=0;
     #15
     in=1;
     #100
     in=0;
     #15
     in=1;
      #15
     in=0;
      #15
     in=1;
     end
     always #5clk=~clk;
endmodule
