`timescale 1ns / 1ps

module test_bench;

    logic d, en, rst;
    logic q;
    
    d_latch uut (.d(d), .en(en), .rst(rst), .q(q));

    initial begin
        $monitor("Time=%0t | d=%b | en=%b | rst=%b | q=%b", $time, d, en, rst, q);

        rst = 0; en = 1; d = 1; #5;  // Reset active, Q should be 0
        rst = 1; en = 1; d = 1; #5;  // Q should update to 1
        rst = 1; en = 1; d = 0; #5;  // Q should update to 0
        rst = 1; en = 0; d = 1; #5;  // Q should hold previous value (0)
        rst = 1; en = 0; d = 0; #5;  // Q should hold previous value (0)
        rst = 1; en = 1; d = 1; #5;  // Q should update to 1
        rst = 1; en = 0; d = 0;  #5;  
        rst = 1; en = 1; d = 1; #5;  // Q should update to 1

        $finish;
    end
endmodule
