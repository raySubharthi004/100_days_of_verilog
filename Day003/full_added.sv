`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 28.02.2025 02:20:46
// Design Name: 
// Module Name: full_added
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


module full_added(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
    );
    
    logic a , b , c_in , sum , c_out;
    logic sum_inter , carry_inter , carry_inter2;
    
    
    half_add u0( .a(a) , .b(b) , .sum(sum_inter) , .carry(carry_inter) );
    half_add u1( .a(sum_inter) , .b(c_in) , .sum(sum) , .carry(carry_inter2) );
    
    assign c_out = carry_inter | carry_inter2;
    
endmodule
