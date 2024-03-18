`timescale 1ns / 1ps

module full_adder_TB(

    );
    logic a,b,c,sum,carry;
    Full_adder aa(a,b,c,sum,carry);
    initial
    begin
    a=0;b=0;c=0;#20;
    a=0;b=0;c=1;#20;
    a=0;b=1;c=0;#20;
    a=0;b=1;c=1;#20;
    a=1;b=0;c=0;#20;
    a=1;b=0;c=1;#20;
    a=1;b=1;c=0;#20; 
    a=1;b=1;c=1;#20;  
    $finish;
    end  
endmodule
