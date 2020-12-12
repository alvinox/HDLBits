// module top_module( 
//     input [99:0] a, b,
//     input cin,
//     output [99:0] cout,
//     output [99:0] sum );

//     assign sum[0]  = a[0] ^ b[0] ^ cin;
//     assign cout[0] = a[0]&b[0] | a[0]&cin | b[0]&cin;

//     integer i;
//     always @(*) begin
//         for (i = 1; i < 100; i = i + 1) begin
//             sum[i]  = a[i] ^ b[i] ^ cout[i-1];
//             cout[i] = a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1];
//         end
//     end

// endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    add1 inst0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cout[0])
    );

    generate
        genvar i;
        for (i = 1; i < 100; i = i + 1) begin: loop
            add1 inst_i(
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );
        end
    endgenerate

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

    assign sum  = a ^ b ^ cin;
    assign cout = a&b | a&cin | b&cin;

endmodule
