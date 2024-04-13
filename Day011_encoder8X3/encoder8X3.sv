`timescale 1ns / 1ps
module encoder8X3(din,dout

    );
    input logic [7:0]din;
    output logic [2:0]dout;
    always@(din)
    begin
    case(din)
    8'b00000001:dout=3'b000;
    8'b00000010:dout=3'b001;
    8'b00000100:dout=3'b010;
    8'b00001000:dout=3'b011;
    8'b00010000:dout=3'b100;
    8'b00100000:dout=3'b101;
    8'b01000000:dout=3'b110;
    8'b10000000:dout=3'b111;
    endcase
    end
endmodule
