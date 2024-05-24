`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 21:59:18
// Design Name: 
// Module Name: adder_sub_TB
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


module adder_sub_TB(

);
   logic [3:0]a,b;
   logic cin;
   logic [3:0]sum;
   logic cout;
   Adder_subtractor ss(a,b,cin,cout,sum);
   initial
   begin
   cin=1;a=0011;b=1100;#20
   cin=1;a=0011;b=1100;#20
   cin=1;a=0111;b=1101;#20
   cin=0;a=1001;b=1110;#20
   cin=0;a=1011;b=1111;#20
   $finish;
   end
endmodule
