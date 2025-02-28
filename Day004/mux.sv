`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 04:48:32
// Design Name: 
// Module Name: mux
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


module mux( 
    input logic [3:0]A,[1:0]sel,
    output logic O
    );
    
    always_comb begin
     case(sel)
     2'b00 : O = A[0];
     2'b01 : O = A[1];
     2'b10 : O = A[2];
     2'b11 : O = A[3];
     
     default : O = 1'bZ;
    endcase
   end  
     
endmodule
