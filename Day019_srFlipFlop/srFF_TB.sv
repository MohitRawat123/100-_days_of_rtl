`timescale 1ns / 1ps


module srFF_TB(

    );
    logic s,r,clk;
    logic q,qbar;
    srFF AA(s,r,clk,q,qbar);
    initial begin
    forever begin
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    end
    end   
    initial
    begin
    s=0;r=0;#20;
    s=0;r=1;#20;
    s=1;r=0;#20;
    s=1;r=1;#20;
    end
endmodule
