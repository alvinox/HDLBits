module top_module ( input a, input b, output out );

    mod_a inst(
        .in1(a),
        .in2(b),
        .out(out)
    );

endmodule

module mod_a ( input in1, input in2, output out );
    // Module body
endmodule