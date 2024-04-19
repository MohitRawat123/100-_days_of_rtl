`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 16:51:51
// Design Name: 
// Module Name: parallel_add_1
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


module parallel_add_1(a,b,c,sum,carry

    );
    input logic [3:0]a,b;
    input logic c;
    output logic [3:0]sum;
    output logic carry;
    logic c0,c1,c2;
     parallel_adder AA(a[0],b[0],c,sum[0],c0);
     parallel_adder Ab(a[1],b[1],c0,sum[1],c1);
     parallel_adder Ac(a[2],b[2],c1,sum[2],c2);
     parallel_adder Ad(a[3],b[3],c2,sum[3],carry);
     
endmodule
