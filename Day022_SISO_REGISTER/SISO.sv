`timescale 1ns / 1ps


module SISO(clk,si,so

    );
    input logic clk,si;
    output logic so;
    logic [2:0]temp;
    always @(posedge clk)
    begin
    temp[0]<=si;
    temp[1]<=temp[0];
    temp[2]<=temp[1];
    so<=temp[2];
    end
    endmodule
