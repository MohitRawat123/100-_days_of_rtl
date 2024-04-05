`timescale 1ns / 1ps

module mux2X1(a0,a1,s,y

    );
    input logic a0,a1,s;
    output logic y;
    always@(*)
    begin
    if(s)
    assign y=a1;
    else 
    assign y=a0;
    end
    
endmodule
