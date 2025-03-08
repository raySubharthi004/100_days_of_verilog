`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 11:15:19
// Design Name: 
// Module Name: test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_bench;

    logic [3:0]a;
    logic [3:0]b;
    logic [7:0]c;
    
    mul u0(.A(a) , .B(b) , .C(c) );
    
    initial begin
        $monitor("Time = %0t | a = %d | b = %d | c = %d", $time, a, b, c);
        a = 4'b0000 ; b = 4'b0000;
        #10;
        a = 4'b1111 ; b = 4'b1110;
        #10;
        a = 4'b1111 ; b = 4'b1111;
        #10;
        a = 4'b1010 ; b = 4'b0101;
        #10;
        $finish;   
    end
endmodule
