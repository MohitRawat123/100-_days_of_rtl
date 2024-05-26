`timescale 1ns / 1ps


module CLA(a,b,sum

    );
    input logic [3:0]a,b;
    supply0 c;
    output logic [4:0]sum;  
    wire [3:0]p,g,t;
    wire c1,c2,c3,cout;
    assign p[0]=a[0]^b[0];
    assign p[1]=a[1]^b[1];
    assign p[2]=a[2]^b[2];
    assign p[3]=a[3]^b[3];
    assign sum[0]=p[0]^c;
    assign sum[1]=p[1]^c1;
    assign sum[2]=p[2]^c2;
    assign sum[3]=p[3]^c3;
    assign sum[4]=cout;
    assign g[0]=a[0]&b[0];
    assign g[1]=a[1]&b[1];
    assign g[2]=a[2]&b[2];
    assign g[3]=a[3]&b[3];
    assign c1=(p[0]&c)|(g[0]);
    assign c2=(p[1]&g[0])|(p[1]&p[0]&c)|(g[1]);
    assign c3=(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&c)|g[2];
    assign cout=(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&c)|g[3];
    
endmodule
