`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 13:06:35
// Design Name: 
// Module Name: p_encoder
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


module p_encoder(
    input logic [7:0] inp,
    output logic [2:0] out
    );
    
    always_comb begin 
        if (inp[7] == 1) 
            out = 3'd7 ; 
        else if(inp[6] == 1 )
            out = 3'd6;
        else if(inp[5] == 1 )
            out = 3'd5;
        else if(inp[4] == 1 )
            out = 3'd4;
        else if(inp[3] == 1 )
            out = 3'd3;
        else if(inp[2] == 1 )
            out = 3'd2;
        else if(inp[1] == 1 )
            out = 3'd2;
        else if(inp[0] == 1 )
            out = 3'd1;
        else if (inp == 8'b0000_0000 )
            out = 3'd0;         
            
        end
endmodule
