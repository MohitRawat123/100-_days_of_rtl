`timescale 1ns / 1ps

module full_sub_TB(

    );
    logic a,b,bin,d,bout;
     full_sub_using_half_subs AA(a,b,bin,d,bout);
     initial
     begin
     a=0;b=0;bin=0;#20;
     a=0;b=0;bin=1;#20;
     a=0;b=1;bin=0;#20;
     a=0;b=1;bin=1;#20;
     a=1;b=0;bin=0;#20;
     a=1;b=0;bin=1;#20;
     a=1;b=1;bin=0;#20;
     a=1;b=1;bin=1;#20;
     $finish;
     end
endmodule
