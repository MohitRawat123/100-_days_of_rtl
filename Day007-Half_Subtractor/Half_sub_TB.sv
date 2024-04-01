`timescale 1ns / 1ps
module Half_sub_TB(

    );
    logic a,b,diff,borr;
    Half_subtractor AA(a,b,diff,borr);
initial
begin
a=0;b=0;#20;
a=0;b=1;#20;
a=1;b=0;#20;
a=1;b=1;#20;
$finish;
end
endmodule
