`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sequence_detector(in,out,clk,rst

    );
    input logic clk,rst,in;
    output logic out;
    parameter s0=2'b00,s1=2'b01,s2=2'b10;
    logic [1:0]cstate,nstate;
    always @(posedge clk)
    begin
    if(rst)
    begin
    out<=0;
    cstate<=s0;
   // nstate<=s0;
    end
    else
    cstate<=nstate;
    end
    
    
    always @(posedge clk)
    begin
    case(cstate)
    s0: begin
    if(in==1'b0)
      begin
      out<=0;
      nstate<=s0;
    //  cstate<=nstate;
      end
      else
      begin
     
      out<=0;
      nstate<=s1;
     // cstate<=nstate;
       $display("I am from case 1");
      end
      end
      
   s1:begin
   if(in==1'b0)
       begin
       out<=0;
          nstate<=s2;
         // cstate<=nstate; 
       end
      else
     begin
    
    out<=0;
       nstate<=s1;
       //cstate<=nstate;
       $display("I am from case 2");
     end
     end
     s2:begin
     if(in==1'b0)
   begin
   out<=0;
    nstate<=s0;
   // cstate<=nstate;
    end
    else
    begin
    $display("I am from case 3");
    out<=1'b1;
     nstate<=s1;
     cstate<=nstate;
     end
     end
        endcase
    end
    
endmodule
   

