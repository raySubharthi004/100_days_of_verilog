`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 11:00:22
// Design Name: 
// Module Name: bin_gray
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


module bin_gray(
    input logic [3:0] A,
    output logic [3:0] B
    );
    
    always_comb begin
        
        B[0] = A[0] ^ A[1];
        B[1] = A[2] ^ A[1];
        B[2] = A[2] ^ A[3];
        B[3] = A[3] ;
    
    
    end
endmodule
