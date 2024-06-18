`timescale 1ns / 1ps


module A_dwn_cntr(clk,rst,count

    );
    input logic clk,rst;
    output logic [3:0]count=4'b0000;
    always @(negedge clk or negedge rst)
    begin
    if(rst)
    count=4'b0000;
    else
    begin
    count=count-4'b0001;
    end
    end
endmodule