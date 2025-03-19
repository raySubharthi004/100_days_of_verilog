`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 09:44:39
// Design Name: 
// Module Name: jk_flip
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


module jk_flip(
    input logic clk,
    input logic j,
    input logic k,
    input logic rst,
    output logic q
    );
    
    logic d;
    
    assign #1 d = (j & ~q) | (~k & q );
    
    d_flip uo( .d(d) , .clk(clk) , .rst(rst)  , .q(q)  );
    
    
endmodule
