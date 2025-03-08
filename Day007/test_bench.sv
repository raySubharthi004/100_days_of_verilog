`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 12:01:26
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

    logic [3:0]A , B;
    logic c_in;
    logic [3:0]sum;
    logic c_out;
    
    fast_adder uut( .A(A) , .B(B) , .c_in(c_in) , .sum(sum) , .c_out(c_out) );
    
    initial begin
        A = 4'd0 ; B = 4'd0; c_in = 1;
        #10;
        A = 4'd4 ; B = 4'd4; c_in = 1;
        #10;
        A = 4'd8 ; B = 4'd4; c_in = 0;
        #10;
        A = 4'd10 ; B = 4'd6; c_in = 0;
        
        #10;
        $finish;    
    
    
    end
endmodule
