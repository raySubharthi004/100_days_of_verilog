`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 13:18:49
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
    logic [7:0] inp;
    logic [2:0] out;
    p_encoder uut(.inp(inp) , .out(out));
    
    initial begin
        inp = 8'b00000001;
        #5;
        inp = 8'b00000010;
        #5;
        inp = 8'b00000100;
        #5;
        inp = 8'b00001000;
        #5;
        inp = 8'b00010000;
        #5;
        inp = 8'b0010_0000;
        #5;
        inp = 8'b0100_0000;
        #5;
        inp = 8'b1000_0000;
        #10;
        inp = 8'b0000_0000;
        #5;
        inp = 8'b0000_0101;
        #5
        inp = 8'b1100_0101;
        #5
        inp = 8'b0100_1101;
        #5
        $finish;
    
    
    
    
    end
endmodule
