`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 22:53:40
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
    logic [2:0] inp;
    logic [7:0] out;
    
    decoder uut(.inp(inp) , .out(out));
    
    initial begin
        inp = 3'b000;
        #5;
        inp = 3'b001;
        #5;
        inp = 3'b010;
        #5;
        inp = 3'b011;
        #5;
        inp = 3'b100;
        #5;
        inp = 3'b101;
        #5;
        inp = 3'b110;
        #5;
        inp = 3'b111; 
        #10;
        $finish;
           
    end
endmodule
