`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 02:17:20
// Design Name: 
// Module Name: half_add
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


module half_add(
    input a,
    input b,
    output sum,
    output carry
    );
    
    logic a , b , sum , carry;
    
    always_comb begin
        sum = a ^ b ;
        carry = a & b ;
          
    
    end
endmodule
