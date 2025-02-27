`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 03:44:13
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb;
    logic a , b , b_in , diff , b_out;
    
    full_sub h0(.a(a) , .b(b) , .b_in(b_in) , .diff(diff) , .b_out(b_out));
    
    initial begin
        a = 0;
        b = 0;
        b_in = 0;
    
    end
    
    
    always #5 a = ~a;
    always #10 b = ~b;
    always #20 b_in = ~b_in;
    
    initial begin
    #40;
    $finish;    
    end


endmodule
