`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module USR(DATAOUT, clock, reset, MODE, DATAIN);
  output logic [3:0] DATAOUT;
  input logic clock, reset;
  input logic [1:0] MODE;
  input logic [3:0] DATAIN;
  
  always @(posedge clock)
  begin
    if(reset)
      DATAOUT <= 0;
    else
      begin
        case(MODE)
          2'b00 : DATAOUT <= DATAOUT;      
          2'b01 : DATAOUT <= {DATAIN[0], DATAOUT[3:1]};
          2'b10 : DATAOUT <= {DATAOUT[2:0], DATAIN[0]};
          2'b11 : DATAOUT <= DATAIN;   
        endcase
      end
  end
  
endmodule