`timescale 1ns / 1ps

module s_up_cntr(clk,rst,count

    );
    input logic clk,rst;
    output logic [3:0]count=4'b0000;
    always @(posedge clk)
    begin
    if(rst)
    count=4'b0000;
    else
    begin
    count=count+4'b0001;
    end
    end
endmodule
