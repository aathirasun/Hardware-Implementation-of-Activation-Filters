//fixed point quantization
//represent floating point numbers 
//replace decimal point with a binary point
//4.75= 4+0.5+0.75 (Q4.4)
//Q notation Qi.f i=number of integer f=" " floating point
module fpq(a,b,c,res);
input [7:0]a;
input [7:0]b;
input [15:0]c;

initial begin
    a=8'b0011_1010;
    b=8'b1000_0001;
    c=a+b;
    #5;
    c=a-b;
    #5;
    c=a*b;
    #5;
    c=
