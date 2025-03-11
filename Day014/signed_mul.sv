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


module signed_mul(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [6:0] C
    );
    
    logic [7:0]register;
    
    
    
    always_comb begin
        register = 8'b0000_0000;
    
        register[2:0] = B[2:0];
        for (int i = 0 ; i < 3 ; i++) begin
            if(register[0] == 1'b1) begin
                register[7:3] = register[7:3] + {1'b0 , A[2:0]};
                register = register >> 1;
                end
            else
                register = register >> 1;       
        end
        
        C = register[5:0];
        C[6] = A[3] ^ B[3];   
    
    end
    
    
endmodule