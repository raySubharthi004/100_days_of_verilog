`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2025 23:50:41
// Design Name: 
// Module Name: hf_sub_tb
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


module hf_sub_tb;
    logic a , b , borrow , diff ; 
    
    hf_sub u0(a , b , diff , borrow);
    
    initial begin
    a = 0;
    b = 0;    
    end
    
    always #5 a = ~a;
    always #10 b = ~b;
    
    initial begin
        #20;
        $finish;
    
    end


endmodule
