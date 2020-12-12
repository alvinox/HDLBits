// this example is "even" parity
module top_module (
    input [7:0] in,
    output parity); 

    //parity checking: 
    // if in有奇数个1:
    //     if 奇效验：
    //         效验位置0
    //     if 偶效验:
    //         效验位置1

    assign parity = ^in;

endmodule