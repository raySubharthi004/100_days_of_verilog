`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 01.03.2025 23:13:07
// Design Name: 
// Module Name: demux
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


module demux(
    input logic inp,
    input logic [2:0] sel,
    output logic [7:0] out
    );
    
    
    always_comb begin
    
        out[0] = ~(sel[0] | sel[1] | sel[2]);
        out[1] = sel[0] & (~(sel[1] | sel[2]));
        out[2] = sel[1] & (~(sel[0] | sel[2]));
        out[3] = sel[0] & sel[1] & (~sel[2]);
        out[4] = sel[2] & (~(sel[1] | sel[0]));
        out[5] = sel[0] & sel[2] & (~sel[1]);
        out[6] = ~sel[0] & sel[1] & sel[2];
        out[7] = sel[0] & sel[1] & sel[2];
    
    end
endmodule
