module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire   and_1 = a & b;
    wire   and_2 = c & d;
    wire   or_1  = and_1 | and_2;
    assign out   = or_1;
    assign out_n = ~or_1;
    
endmodule