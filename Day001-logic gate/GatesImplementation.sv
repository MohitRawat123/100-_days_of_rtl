`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 21:22:43
// Design Name: 
// Module Name: GatesImplementation
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


module GatesImplementation(a,b,and_1,or_2,not_3,not_4,nand_5,nor_6

    );
input logic a,b;
output logic and_1,or_2,not_3,not_4,nand_5,nor_6;
assign and_1= a&b;
assign or_2=a|b;
assign not_3=~a;
assign not_4=~b;
assign nand_5=~(a&b);
assign nor_6=~(a|b); 
endmodule
