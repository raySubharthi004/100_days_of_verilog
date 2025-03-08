`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 20:06:40
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
    logic [3:0]a , b;
    logic [2:0]c;

    comp u0(
        .a(a),
        .b(b),
        .c(c)
    );
    initial begin
        a = 4'b0000; b = 4'b0000;
        #10;
        a = 4'b0100; b = 4'b0010;
        #10;
        a = 4'b1000; b = 4'b1000;
        #10;
        a = 4'b1111; b = 4'b1110;
        #10;
        a = 4'b1110; b = 4'b1111;
        #10;
        $finish;
         
    
    end
    
endmodule
