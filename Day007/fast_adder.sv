`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 11:36:37
// Design Name: 
// Module Name: fast_adder
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


module fast_adder(
    input logic [3:0]A , B,
    input logic c_in,
    output logic [3:0]sum,
    output logic c_out

    );
    logic [3:0]c ;
    always_comb  begin
        c[0] = c_in;
        c[1] = ( A[0] & B[0] ) | ( (A[0] ^ B[0]) & c[0] ) ;
        c[2] = ( A[1] & B[1] ) | ((A[1] ^ B[1]) & (( A[0] & B[0]) | ((A[0] ^ B[0]) & c[0] )) );
        c[3] = ( A[2] & B[2] ) | ((A[2] ^ B[2]) & ( A[1] & B[1] ) | ((A[1] ^ B[1]) & (( A[0] & B[0]) | ((A[0] ^ B[0]) & c[0] ))));
        c_out =( A[3] & B[3] ) | ((A[3] ^ B[3]) & (( A[2] & B[2] ) | ((A[2] ^ B[2]) & ( A[1] & B[1] ) | ((A[1] ^ B[1]) & (( A[0] & B[0]) | ((A[0] ^ B[0]) & c[0] ))))));
        
        sum = A ^ B ^ c;
     end 
endmodule
