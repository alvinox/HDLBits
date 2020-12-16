module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);

    always @(negedge clk) begin
        if (reset)
            q <= 8'h34;
        else
            q <= d;
    end

endmodule

// 时钟下降沿触发，如果仍要使用上升沿触发的触发器，则通过将输入触发器的时钟取反实现。
// 复位值不为0，则在电路中使用 fds ，带有置位端s的触发器实现。