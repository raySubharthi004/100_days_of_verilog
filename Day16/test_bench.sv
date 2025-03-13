`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 21:57:45
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

    logic [3:0] A;
    logic [7:0] B;
    
    bin_bcd uo( .binary(A) , .bcd(B) );
    
    initial begin
        $monitor("Binary = %b :: Bcd = %b " , A , B);
        A = 4'b1111;
        #10;
        A = 4'b1011;
        #10;
        A = 4'b1010;
        #10; 
        $finish;
        
        
    
    end
endmodule
