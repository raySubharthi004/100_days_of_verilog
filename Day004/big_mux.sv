`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 05:05:11
// Design Name: 
// Module Name: big_mux
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


module big_mux(
    input logic [7:0]A , [3:0] sel,
    output logic O 
    );
    
    logic o1 , o2; 
    logic [3:0]  k ;
    
    assign k[3] = 1'b0;
    
    mux m1(.A(A[3:0]) , .sel(sel[1:0]) , .O(o1)  ) ;
    mux m2(.A(A[7:4]) , .sel(sel[1:0]) , .O(o2)  ) ;
    
    assign k[0] = o1 ; 
    assign k[1] = o2;
    assign k[3] = 1'b0;
    assign k[4] = 1'b0;   
    
     mux  m3(.A(k) , .sel(sel[3:2])  , .O(O)) ; 
    
    
    
endmodule
