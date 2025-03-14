`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 00:19:55
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
    logic [7:0] A;
    logic [7:0] B;
    
    bcd_bin uo( .bcd(A) , .binary(B) );
    
    initial begin
        $monitor("bcd = %b :: binary = %b " , A , B);
        A = 8'b1001_1001;
        #10;
        A = 8'b1000_0001;
        #10;
        A = 8'b0001_0111;
        #10; 
        $finish;
        
        
    
    end
endmodule
