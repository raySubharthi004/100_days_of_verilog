`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 11:22:46
// Design Name: 
// Module Name: test_bench2
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


module test_bench2;

    logic [3:0] A , B;
    
    grey_bin uo(.A(A) , .B(B));
    
    initial begin
    
        A = 4'b1000;
        #10;
        A = 4'b1111;
        #10
        A = 4'b0011;
        #10;
        $finish;
    
    
    end
    
    
    
endmodule
