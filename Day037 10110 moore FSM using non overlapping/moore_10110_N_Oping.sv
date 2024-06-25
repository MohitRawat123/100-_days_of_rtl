`timescale 1ns / 1ps

module moore_10110_N_Oping(clk,rst,in,out

    );
    input logic clk,rst,in;
    output logic out;
    parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101;
    logic [2:0]cstate,nstate;
    always@(posedge clk)
    begin
    if(rst)
    begin
    cstate=s0;
    out=1'b0;
    $display("in case 0");
    end
    else
    cstate=nstate;
    end
    
    always@(posedge clk)
    begin
    case(cstate)
    s0:begin
    if(in)
    begin
    nstate=s1;
   // out=1'b0;
    end
    else
    begin
    nstate=s0;
   // out=1'b0;
     $display("in case 1");
    end
    end
    
    
    s1:begin
    if(in)
    begin
    nstate=s1;
   // out=1'b0;
    end
    else
    begin
    nstate=s2;
    //out=1'b0;
     $display("in case 2");
    end
    end
    
    
    
    
     s2:begin
    if(in)
    begin
    nstate=s3;
    //out=1'b0;
    end
    else
    begin
    nstate=s0;
   // out=1'b0;
     $display("in case 3");
    end
    end
    
    
    
   s3:begin
    if(in)
    begin
    nstate=s4;
  //  out=1'b0;
    end
    else
    begin
    nstate=s2;
   // out=1'b0;
     $display("in case 4");
    end
    end
      
    
    s4:begin
    if(in)
    begin
    nstate=s1;
    //out=1'b0;
    end
    else
    begin
    nstate=s5;
   // out=1'b0;
     $display("in case 5");
    end
    end
   
   
   s5:begin
    if(in)
    begin
    nstate=s1;
   // out=1'b1;
    end
    else
    begin
    nstate=s0;
    //out=1'b1;
     $display("in case 6");
    end
    end 
    endcase
    end
    always@(*)
    begin
    out=(cstate==s5);
    end
endmodule
