`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 20:49:48
// Design Name: 
// Module Name: comp_8bit
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


module comp_8bit(
    input logic [7:0] A,
    input logic [7:0] B,
    output logic [2:0] C
    );
    logic [2:0]c_1 , c_2;
    comp u1(.a(A[3:0]) ,  .b(B[3:0]), .c(c_1) );
    comp u2(.a(A[7:4]) ,  .b(B[7:4]), .c(c_2));
    
    assign C[1] = c_1[1] & c_2[1];
    assign C[0] = c_2[0] | (c_2[1] & c_1[0]);
    assign C[2] = c_2[2] | (c_2[1] & c_1[2]); 
endmodule
