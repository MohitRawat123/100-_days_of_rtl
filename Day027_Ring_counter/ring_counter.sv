`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module ring_counter(clk,rst,d

    );
    input logic clk,rst;
    output logic [3:0]d=4'b0000;
    always @(posedge clk)
    begin
    if(rst)
    d<=4'b1000;
    else
    begin
    d[3]<=d[0];
    d[2]<=d[3];
    d[1]<=d[2];
    d[0]<=d[1];
    end
    end
endmodule
