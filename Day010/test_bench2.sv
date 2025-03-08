`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 23:30:26
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
    logic inp;
    logic [2:0] sel;
    logic [7:0] out;
    
    demux de(.inp(inp),.sel(sel) , .out(out));
    
    initial begin
        inp = 1;
        sel = 3'd0;
        #5;
        sel = 3'd1;
        #5;
        sel = 3'd2;
        #5;
        sel = 3'd3;
        #5;
        sel = 3'd4;
        #5;
        sel = 3'd5;
        #5;
        sel = 3'd6;
        #5;
        sel = 3'd7;
        #5;        
        $finish;
           
    end
endmodule
