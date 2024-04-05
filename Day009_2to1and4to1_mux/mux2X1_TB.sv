`timescale 1ns / 1ps
module mux2X1_TB(

    );
    logic a0,a1,s,y;
     mux2X1 AA(a0,a1,s,y);
     initial
     begin
     s=0;a0=0;a1=1;#20;
     s=1;a0=0;a1=1;#20;
     $finish;
     end
endmodule
