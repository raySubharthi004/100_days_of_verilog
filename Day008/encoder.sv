`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 01.03.2025 12:33:13
// Design Name: 
// Module Name: encoder
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


module encoder(
    input logic [7:0]inp,
    output logic [2:0] out 
    );
    
    always_comb begin
    
        out[0] = inp[1] | inp[3] | inp[5] | inp[7];
        out[1] = inp[2] | inp[3] | inp[6] | inp[7];
        out[2] = inp[4] | inp[5] | inp[6] | inp[7];
  
      
    
    end
    
endmodule
