module top_module ( input clk, input d, output q );

    wire w0;
    wire w1;

    my_dff inst0(
        .clk(clk),
        .d(d),
        .q(w0)
    );

    my_dff inst1(
        .clk(clk),
        .d(w0),
        .q(w1)
    );

    my_dff inst2(
        .clk(clk),
        .d(w1),
        .q(q)
    );

endmodule

module my_dff ( input clk, input d, output q );
endmodule