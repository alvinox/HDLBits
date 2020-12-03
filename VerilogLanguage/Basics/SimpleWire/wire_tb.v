module tb();
    parameter PERIOD = 5;

    reg clk;
    reg rst_n;

    reg  in;
    wire out;

    top_module inst (
        .in(in),
        .out(out)
    );

    initial begin
        clk   = 0;
        rst_n = 0;

        #1000 $finish;
    end
    always #PERIOD clk = ~clk;

    initial begin
        #100 in = 1;
        #20  in = 0;
        forever #50 in = ~in;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb);
    end

endmodule
