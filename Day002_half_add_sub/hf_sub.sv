`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2025 23:35:02
// Design Name: 
// Module Name: hf_sub
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


module hf_sub(
    input a,
    input b,
    output diff,
    output borrow
    );
    
    
    logic a , b , diff , borrow;
    
    always_comb begin
        diff = a ^ b;
        borrow = ~a & b;    
    end
endmodule
