`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 09:51:43
// Design Name: 
// Module Name: t_flip
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


module t_flip(
    input logic clk,
    input logic t,
    input logic rst,
    output logic q
    );
    
    always@(posedge clk ) begin   
    
        if (rst)
            q <= 0;
        else 
            if(t)
                q <= ~q;
            else 
                q <= q;   
    end 
 endmodule
