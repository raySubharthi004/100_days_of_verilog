`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 21:02:41
// Design Name: 
// Module Name: test_bench_8bit
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


module test_bench_8bit;
    logic [7:0]a,b; 
    logic [2:0] c;
    
    comp_8bit uut(.A(a) , .B(b) , .C(c));
    initial begin
        a = 8'b0000_0000; b = 8'b0000_0000;
        #10;
        a = 8'b1000_0000; b = 8'b0000_1000;  // A > B 
        #10;
        a = 8'b0001_1100; b = 8'b0001_1000; // A > B
        #10;
        b = 8'b1000_0000; a = 8'b0000_1000;  // A > B 
        #10;
        b = 8'b0001_1100; a = 8'b0001_1000; // A > B
        #10;
        a = 8'b1111_1111; b = 8'b1111_1111;
        #10;
        $finish;
        
    end
endmodule
