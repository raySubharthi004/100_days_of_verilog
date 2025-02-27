`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 27.02.2025 23:35:02
// Design Name: 
// Module Name: hf_adder
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


module hf_adder(
    input a,
    input b,
    output sum,
    output carry
    );
    
    logic a , b , sum , carry;
    
    always_comb begin
        sum = a ^ b;
        carry = a & b;    
    end
endmodule
