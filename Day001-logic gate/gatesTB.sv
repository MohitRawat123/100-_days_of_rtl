`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 21:34:00
// Design Name: 
// Module Name: gatesTB
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


module gatesTB(

    );
logic a,b,and_1,or_2,not_3,not_4,nand_5,nor_6;
GatesImplementation gates(a,b,and_1,or_2,not_3,not_4,nand_5,nor_6);
initial 
begin
a=0;b=0;#20;  
a=0;b=1;#20;
a=1;b=0;#20;
a=1;b=1;#20; 
$finish;
end   
endmodule
