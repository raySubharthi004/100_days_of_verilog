`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 22:11:17
// Design Name: 
// Module Name: div
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


module div(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] Q,
    output logic [4:0] R
    );
    
    
    logic [8:0]register;
    
    always_comb begin
    if (B == 0) begin
        Q = 0;
        R = A;    
    end
    else begin
        
        register = 9'b0000_00000;
        register[3:0] = A;
        for (int i = 0 ; i < 4 ; i++) begin
        
            register = register << 1;
            register[8:4] = register[8:4] - B;
            if ($signed(register[8:4]) < 0) begin
                register[0] = 0;
                register[8:4] = register[8:4] + B;         
            end
            else 
                register[0] = 1;      
        
        end
        
            R = register[8:4];
            Q = register[3:0];
        end
    
       
     
        
    end
endmodule
