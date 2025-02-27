`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 02:43:31
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

    logic a , b , c_in , sum , c_out;
    
    full_added g0(.a(a) , .b(b) , .c_in(c_in) , .sum(sum) , .c_out(c_out));
    
    initial begin
        a = 0;
        b = 0;
        c_in = 0;
    
    end
    
    
    always #5 a = ~a;
    always #10 b = ~b;
    always #20 c_in = ~c_in;
    
    initial begin
    #40;
    $finish;    
    end
    
endmodule
