module tb();
    parameter PERIOD = 5;

    reg clk;
    reg rst_n;

    wire o;

    top_module inst (
        .one(o)
    );

    initial begin
        clk   = 0;
        rst_n = 0;

        #1000 $finish;
    end
    always #PERIOD clk = ~clk;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb);
    end

endmodule
