`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 22:24:17
// Design Name: 
// Module Name: test_bench
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


module test_bench;
    
    logic [3:0] A , B  , Q ;
    logic [4:0] R;
    
    div uo(.A(A) , .B(B) , .Q(Q) , .R(R));
    
    initial begin
        $monitor("A = %d :: B = %d :: Q = %d :: R = %d ::" , A , B , Q , R);
        A = 4'b1111   ; B = 4'b1111;
        #10;
        A = 4'b1110   ; B = 4'b1110;
        #10;
        A = 4'b1111   ; B = 4'b0000;
        #10;
        A = 4'b1011   ; B = 4'b1111;
        #10;
        A = 4'b1011   ; B = 4'b0011;
        #10;
        A = 4'b1101   ; B = 4'b0101;
        #10;
        
        $finish;
        
    
    
    end
    
endmodule
