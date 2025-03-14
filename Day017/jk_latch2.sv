`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 19:14:23
// Design Name: 
// Module Name: jk_latch2
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


module jk_latch2(
    input logic j ,k , rst , en,
    output logic q
    );
    logic d;
    
    assign #1 d = ( j & (~q) ) | ( (~k) & q  ) ; 
    
    d_latch u1(.d(d) , .en(en) , .rst(rst) , .q(q) ) ;
endmodule
