`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 17:04:56
// Design Name: 
// Module Name: parallel_add_1_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parallel_add_1_TB(

    );
    logic [3:0]a,b;
    logic c=0;
    logic [3:0]sum;
    logic carry;
    parallel_add_1 AA(a,b,c,sum,carry);
    initial
    begin
    a=4'b0000;b=4'b0000;#20;
    a=4'b0010;b=4'b0100;#20;
    a=4'b0110;b=4'b1000;#20;
    a=4'b1100;b=4'b0011;#20;
    $finish;
    end
endmodule
