module top_module( 
    input [254:0] in,
    output [7:0] out );

    integer i;
    always @(*) begin
        out = 8'h00;
        for (i = 0; i < 255; i = i + 1) begin
            out = out + (in[i] == 1'b1 ? 1 : 0);
        end

    end

endmodule