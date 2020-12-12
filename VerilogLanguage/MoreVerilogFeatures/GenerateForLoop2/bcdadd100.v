module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] cout_tmp;

    bcd_fadd inst0(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(cout_tmp[0]),
        .sum(sum[3:0])
    );

    generate
        genvar i;
        for (i = 4; i < 400; i = i + 4) begin: loop
            bcd_fadd inst_i(
                .a(a[i+3:i]),
                .b(b[i+3:i]),
                .cin(cout_tmp[(i>>2) - 1]),
                .cout(cout_tmp[i>>2]),
                .sum(sum[i+3:i])
            );
        end
    endgenerate

    assign cout = cout_tmp[99];

endmodule


module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );

endmodule