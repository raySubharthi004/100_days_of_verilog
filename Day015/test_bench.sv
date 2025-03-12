`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 11:02:32
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
    
    bin_gray uo(.A(A) , .B(B));
    
    initial begin
        A = 4'b1111;
        #10;
        A = 4'b1010;
        #10
        A = 4'b0010;
        #10;
        $finish;
        
    
    
    
    end
    
endmodule
