`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module juniversalShiftRegisterTb;
   logic [3:0] DATAOUT;
  logic clock, reset;
  logic [1:0] MODE;
  logic [3:0] DATAIN;
  
 USR aa(DATAOUT, clock, reset, MODE, DATAIN);
  
  initial
  begin
    clock =0; MODE = 2'b00; DATAIN = 4'b0000;
    reset = 1; #10; reset = 0; #10;
    
    
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b01; DATAIN = 4'b0011; #10;
    MODE = 2'b01; DATAIN = 4'b0011; #10;
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b10; DATAIN = 4'b0111; #10;
    MODE = 2'b10; DATAIN = 4'b0111; #10;
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b11; DATAIN = 4'b1010; #10;
    $finish;
  end
  always #5 clock = ~clock;
  endmodule