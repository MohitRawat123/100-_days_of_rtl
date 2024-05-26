`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 20:58:37
// Design Name: 
// Module Name: claTB
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


module claTB(

    );
    logic [3:0]a,b;
    logic [4:0]sum;
    CLA AA(a,b,sum);
    initial
    begin
    a=4'd2;b=4'd7;#20;
    a=4'd4;b=4'd12;#20;
    a=4'd13;b=4'd10;#20;
    a=4'd9;b=4'd8;#20;
    a=4'd5;b=4'd5;#20;
    a=4'd1;b=4'd6;#20;
    a=4'd5;b=4'd3;#20;
    $finish;
    end
endmodule
