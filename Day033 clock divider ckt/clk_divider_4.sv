`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module clk_divider_4(clk_in,clk_out

    );
    input logic clk_in;
    output logic clk_out;
    logic [1:0]m=0;
    always@(posedge clk_in)
    begin
    m<=m+1;
    end
    assign clk_out=m[1];
  
endmodule
