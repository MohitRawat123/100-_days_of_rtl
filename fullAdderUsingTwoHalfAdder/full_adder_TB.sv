`timescale 1ns / 1ps
module full_adder_TB(

    );
    logic a,b,cin,sum,cout;
    full_adder_using_half_adder AA(a,b,cin,sum,cout);
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
