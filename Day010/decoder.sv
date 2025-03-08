`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 01.03.2025 22:38:28
// Design Name: 
// Module Name: decoder
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


module decoder(
    input logic [2:0] inp,
    output logic [7:0] out
    );
    
    always_comb begin
    
        if (inp == 3'd0)
            out = 8'b0000_0001;
        else if(inp == 3'd1)
            out = 8'b0000_0010;
        else if(inp == 3'd2)
            out = 8'b0000_0100;
        else if(inp == 3'd3)
            out = 8'b0000_1000;
        else if(inp == 3'd4)
            out = 8'b0001_0000;
        else if(inp == 3'd5)
            out = 8'b0010_0000;
        else if(inp == 3'd6)
            out = 8'b0100_0000;
        else if(inp == 3'd7)
            out = 8'b1000_0000;     
    end
    
endmodule
