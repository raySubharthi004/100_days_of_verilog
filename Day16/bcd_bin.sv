`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 00:13:08
// Design Name: 
// Module Name: bcd_bin
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


module bcd_bin(
    input logic [7:0] bcd,
    output logic [7:0] binary
    );
    
    always_comb begin
        binary = bcd[3:0] + 10 * bcd[7:4];
    
    end
    
    
endmodule
