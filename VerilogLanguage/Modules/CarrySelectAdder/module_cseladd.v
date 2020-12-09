module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire lower_cout;
    add16 lower(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(lower_cout)
    );

    wire [15:0] higher0_sum;
    wire [15:0] higher1_sum;
    add16 higher0(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(higher0_sum),
        .cout()
    );
    add16 higher1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(higher1_sum),
        .cout()
    );

    assign sum[31:16] = lower_cout ? higher1_sum : higher0_sum;

endmodule

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule