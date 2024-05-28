`timescale 1ns / 1ps


module dFF_TB(

    );
    logic d,clk;
    logic q;
    dFF AA(d,clk,q);
    initial
    begin
    forever
    begin
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    end
    end
    initial
    begin
    d=0;#20;
    d=1;#20;
    end
endmodule
