`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 20:53:50
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

    logic [3:0] A , B , sum;
    logic c_in , c_out;
    
    adder_4_bit uut(.A(A) , .B(B) , .c_in(c_in) , .sum(sum) , .c_out(c_out));
    
    initial begin
        A = 4'd0 ; B = 4'd0 ; c_in = 0;
        #10;
        A = 4'd4 ; B = 4'd8 ; c_in = 0;
        #10;
        A = 4'd8 ; B = 4'd10 ; c_in = 0;
        #10;
        A = 4'd4 ; B = 4'd8 ; c_in = 0;
        #10;
        A = 4'd15 ; B = 4'd9 ; c_in = 0;
        #10;
        $finish;
        
        

        

                
        
        
    
    
    end
endmodule
