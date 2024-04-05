`timescale 1ns / 1ps

module mux4X1_TB(

    );
    logic s0,s1,a0,a1,a2,a3,y;
    mux4X1 AA(s0,s1,a0,a1,a2,a3,y);
    initial
    begin
    s1=0;s0=0;a0=0;a1=1;a2=0;a3=1;#20;
    s1=0;s0=1;a0=0;a1=1;a2=0;a3=1;#20;
    s1=1;s0=0;a0=0;a1=1;a2=0;a3=1;#20;
    s1=1;s0=1;a0=0;a1=1;a2=0;a3=1;#20;
    $finish;
    end
endmodule
