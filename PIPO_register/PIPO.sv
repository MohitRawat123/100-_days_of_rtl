`timescale 1ns / 1ps


module PIPO(d,clk,q

    );
    input logic clk;
    input logic [3:0]d;
    output logic [3:0]q;
    always @(posedge clk)
    begin
    q[3]<=d[3];
    q[2]<=d[2];
    q[1]<=d[1];
    q[0]<=d[0];
    end
endmodule
