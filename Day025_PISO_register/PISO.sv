`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module PISO(d,mode,clk,so

    );
    input logic [3:0]d;
    input logic mode,clk;
    output logic so;
    logic [3:0]q=0;
    always @(posedge clk)
    begin
    if(mode==1)
    q<=d;
    else
    begin
    q[3]<=1'bX;
    q[2]<=q[3];
    q[1]<=q[2];
    q[0]<=q[1];
    end
    end
    assign so = q[0];
    endmodule
