`timescale 1ns / 1ps

module decoder3X8(din,dout

    );
    input logic [2:0]din;
    output logic [7:0]dout;
    always@(din)
    begin
    case(din)
    3'b000:dout=8'b00000001;
    3'b001:dout=8'b00000010;
    3'b010:dout=8'b00000100;
    3'b011:dout=8'b00001000;
    3'b100:dout=8'b00010000;
    3'b101:dout=8'b00100000;
    3'b110:dout=8'b01000000;
    3'b111:dout=8'b10000000;
    endcase
    end
endmodule
