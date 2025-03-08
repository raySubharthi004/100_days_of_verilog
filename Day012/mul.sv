`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 11:00:34
// Design Name: 
// Module Name: mul
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


module mul(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [7:0] C
    );
    
    logic [8:0]register;
    
    
    
    always_comb begin
        register = 9'b0000_00000;
    
        register[3:0] = B;
        for (int i = 0 ; i < 4 ; i++) begin
            if(register[0] == 1'b1) begin
                register[8:4] = register[8:4] + {1'b0 , A};
                register = register >> 1;
                end
            else
                register = register >> 1;       
        end
        
        C = register[7:0];   
    
    end
    
    
endmodule
