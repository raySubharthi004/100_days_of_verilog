`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 21:17:24
// Design Name: 
// Module Name: bin_bcd
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


module bin_bcd(
    input logic [3:0] binary,
    output logic [7:0] bcd
    );
    
    logic [11:0]register;
    always_comb begin
        register = 0;
        register[3:0]  = binary;
        
        
       for(int i  = 0 ; i < 4 ; i++ ) begin
        
        if (register[7:4] > 4)
            register[7:4] = register[7:4] + 3;
        if (register[11:8] > 4)
            register[11:8] = register[11:8] + 3;
        register = register << 1;

        
        end
        
        bcd = register[11:4];
        
             
    
    end
endmodule
