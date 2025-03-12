`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 11:17:00
// Design Name: 
// Module Name: grey_bin
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


module grey_bin(
    input logic [3:0] A,
    output logic [3:0] B
    );
    
    always_comb begin
    
        B[3] = A[3];
        B[2] = A[3] ^ A[2];
        B[1] = A[3] ^ A[2] ^ A[1];
        B[0] = A[3] ^ A[2] ^ A[1] ^ A[0]; 
    
    end
    
    
    
endmodule
