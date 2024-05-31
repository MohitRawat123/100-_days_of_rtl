`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module sipo_TB(

    );
    logic si,clk;
    logic [3:0]so;
    sipo AA(si,clk,so);
   initial
    begin
    clk=0;
    si=1'b1;#20;
    si=1'b0;#20;
    si=1'b1;#20;
    si=1'b0;#20; 
    end
    always #10 clk=~clk;
    
endmodule
