`timescale 1ns / 1ps

module dFF(d,clk,q

    );
    input logic d,clk;
    output logic q;
    always@(posedge clk)
    begin
    
    q=d;
    end
endmodule
