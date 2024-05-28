`timescale 1ns / 1ps

module jkFF(j,k,clk,q,qbar

    );
    input logic j,k,clk;
    output logic q,qbar;
    always@ (posedge clk)
    begin
    case({j,k})
    2'b10:q=1;
    2'b01:q=0;
    2'b11:q=~q;
    2'b00:q=q;
    endcase
    end
    assign qbar=~q;
endmodule
