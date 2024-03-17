`timescale 1ns / 1ps

module Half_adder_TB(

    );
    logic a,b,sum,cin,carry;
    Half_adder AA( a,b,cin,sum,carry);
    initial
    begin
    a=0;b=0;cin=0;#20;
    a=0;b=0;cin=1;#20;
    a=0;b=1;cin=0;#20;
    a=0;b=1;cin=1;#20;
    a=1;b=0;cin=0;#20;
    a=1;b=0;cin=1;#20;
    a=1;b=1;cin=0;#20;
    a=1;b=1;cin=1;#20;
    $finish;
    end
endmodule
