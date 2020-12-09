module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    wire [24:0] lhs;
    wire [24:0] rhs;

    assign lhs    = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign rhs    = {5{a, b, c, d, e}};
    assign out    = ~(lhs ^ rhs);

endmodule