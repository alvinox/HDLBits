module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    fadd add0(a[0], b[0], cin, cout[0], sum[0]);

    generate
        genvar i;
        for (i = 1; i < 3; i = i + 1) begin: loop
            fadd add_i(a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate

endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );

    assign {cout, sum} = a + b + cin;
    
    
endmodule