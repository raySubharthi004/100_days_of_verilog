`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 19:39:37
// Design Name: 
// Module Name: comp
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


module comp(
    input logic [3:0] a,
    input logic [3:0] b,
    output logic  [2:0] c
    );
    
    always@(*) begin
    
        c[1] = (~(a[3] ^ b[3])) & (~(a[2] ^ b[2])) & (~(a[1] ^ b[1])) & ~(a[0] ^ b[0]);
        c[0] =  (~a[3]& b[3]) | (~(a[3] ^ b[3]))&(~a[2]& b[2])  |   (~(a[3] ^ b[3]))&(~(a[2] ^ b[2]))&(~a[1]& b[1]) | (~(a[3] ^ b[3]))&(~(a[2] ^ b[2]))&(~(a[1] ^ b[1])) & (~a[0]& b[0]);  // A > B
        c[2] = (a[3]& (~b[3])) | (~(a[3] ^ b[3]))&(a[2]& (~b[2]))  |   (~(a[3] ^ b[3]))&(~(a[2] ^ b[2]))&(a[1]& (~b[1])) | (~(a[3] ^ b[3]))&(~(a[2] ^ b[2]))&(~(a[1] ^ b[1])) & (~b[0]& a[0]); //   A < B
    
    end
    
    
endmodule
