`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module clk_div_by_4_TB(

    );
    logic clk_in;
    logic clk_out;
    clk_divider_4 AA(clk_in,clk_out);
    initial
    begin
    clk_in=0;
    end
    always #20clk_in=~clk_in;
endmodule
