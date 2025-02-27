`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 03:38:21
// Design Name: 
// Module Name: half_sub
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


module half_sub(
    input a,
    input b,
    output diff,
    output borrow
    );
    
    logic a , b , diff , borrow ;
    
    always_comb begin
        diff = a ^ b;
        borrow = ~a & b ;    
    end
endmodule
