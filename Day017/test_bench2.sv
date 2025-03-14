`timescale 1ns / 1ps
module test_bench2;
    logic j, k, en, rst, q;
    
    jk_latch2 u3( .j(j), .k(k), .rst(rst), .en(en), .q(q) );
    
    initial begin
        $monitor("Time=%0t | J=%b | K=%b | EN=%b | RST=%b | Q=%b", $time, j, k, en, rst, q);
        
        rst = 0; j = 0; k = 0; en = 0;
        #5;
        rst = 1; en = 1; j = 1; k = 0; // Set Q to 1
        #5;
        rst = 1; en = 1; j = 0; k = 0; // Hold state
        #5;
        rst = 1; en = 1; j = 1; k = 1; // Toggle Q
        #5;
        rst = 1; en = 1; j = 0; k = 1; // q to 0
        #5;
        rst = 1; en = 1; j = 1; k = 0; // Set Q to 1
        #5;
        rst = 1; en = 0; j = 1; k = 0; // Enable low, should hold state
        #5;
        rst = 1; en = 0; j = 0; k = 0; // Hold state
        #5;
        rst = 1; en = 0; j = 0; k = 1; // Hold state
        #5;
        rst = 1; en = 0; j = 1; k = 1; // Hold state
        #5;       
        $finish;
    end
endmodule