`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 15:58:16
// Design Name: 
// Module Name: d_flip
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


module d_flip(
    input logic d,
    input logic clk,
    output logic rst,
    output logic q
    );
    
    
    always@(posedge clk , posedge rst) begin
        if (rst)
            q <= 0;
        else
            q <= d;   
    end   
    
endmodule
