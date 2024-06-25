`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module sequence_detector_110_TB(

    );
    logic in,clk,rst;
    logic out;
    sequence_detector_110 AA(clk,in,out,rst);
     initial
     begin
     clk=0;
     rst=1;
     in=0;
     #90
     rst=0;
     in=1;
     #60
      in=1;
     #60
     in=0;
     #100
     in=1;
     #120
     in=0;
     #10
     in=0;
     end
    always #20 clk=~clk;
endmodule