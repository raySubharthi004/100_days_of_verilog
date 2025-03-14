`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 19:06:49
// Design Name: 
// Module Name: jk_latch
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


module jk_latch(
    input logic j , k , en , rst,
    output logic q
    );
    
    always_latch begin
        if(!rst )
            q <= 0;
        else if(en)begin
            case({j , k})
                2'b00 : q <= q;
                2'b01 : q <= 0;
                2'b10 : q <= 1;
                2'b11 : q <= ~q;
            endcase    
        end
    end
endmodule
