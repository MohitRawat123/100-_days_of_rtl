`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module mod_10_counter(count,clk

    );
    input logic clk;
    output logic [1:0]count;
    always @(posedge clk)
    begin
    if(count<2)
   count=count+1;
    else
    count=0;
    end
endmodule
