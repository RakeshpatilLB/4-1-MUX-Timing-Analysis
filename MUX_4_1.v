module MUX_4_1(
    input clk,
    input s0,
    input s1,   
    input  a,           
    input  b,           
    input  c,           
    input  d,           
    output y           
);
    
    wire y0, y1;


    MUX2 M1(.I0(a),.I1(b),.S(s1),.Z(y0));
    MUX2 M2(.I0(c),.I1(d),.S(s1),.Z(y1));
    MUX2 M3(.I0(y0),.I1(y1),.S(s0),.Z(y));
    
    
endmodule
