`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 20:25:21
// Design Name: 
// Module Name: adder_4_bit
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


module adder_4_bit(
    input logic [3:0]A  , B,
    input logic c_in,
    output logic [3:0]sum, 
    output logic c_out
    );
    
    logic c_out_i1 , c_out_i2 , c_out_i3;
    
    full_added f1(.a(A[0]) , .b(B[0]) , .c_in(c_in) ,     .sum(sum[0]) , .c_out(c_out_i1) );
    full_added f2(.a(A[1]) , .b(B[1]) , .c_in(c_out_i1) , .sum(sum[1]) , .c_out(c_out_i2));
    full_added f3(.a(A[2]) , .b(B[2]) , .c_in(c_out_i2) , .sum(sum[2]) , .c_out(c_out_i3));
    full_added f4(.a(A[3]) , .b(B[3]) , .c_in(c_out_i3) , .sum(sum[3]) , .c_out(c_out));
    
    
endmodule
