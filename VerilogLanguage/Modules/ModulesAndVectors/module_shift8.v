module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] o1, o2, o3;

    my_dff8 inst0 (clk,  d, o1);
    my_dff8 inst1 (clk, o1, o2);
    my_dff8 inst2 (clk, o2, o3);

    always @(*) begin
        case (sel)
            2'h0: q =  d;
            2'h1: q = o1;
            2'h2: q = o2;
            2'h3: q = o3;
        endcase
    end

endmodule

module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
endmodule