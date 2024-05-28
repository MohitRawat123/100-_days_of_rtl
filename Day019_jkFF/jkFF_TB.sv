`timescale 1ns / 1ps


module jkFF_TB(

    );
    logic j,k,clk;
    logic q,qbar;
    jkFF AA(j,k,clk,q,qbar);
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
    j=0;k=0;#20;
    j=1;k=0;#20;
    j=0;k=1;#20;
    j=1;k=1;#20; 
    end  
endmodule
