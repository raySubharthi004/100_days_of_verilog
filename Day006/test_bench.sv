`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Subharthi Ray
// 
// Create Date: 01.03.2025 10:35:04
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

    logic [3:0] A , B , out_put;
    logic [2:0] sel;
    logic c_out;
    
    alu uut(.a(A) , .b(B) , .sel(sel) , .alu_out(out_put) , .c_out(c_out));
    
    initial begin
        A = 4'b00 ; B = 4'b00 ; sel = 3'b000;
        #10;
        A = 4'b0011 ; B = 4'b0011 ; sel = 3'b000;
        #10;
        A = 4'b0100 ; B = 4'b0011 ; sel = 3'b001;
        #10;
        A = 4'b0011 ; B = 4'b0011 ; sel = 3'b010;
        #10;
        A = 4'b0011 ; B = 4'b0011 ; sel = 3'b011;
        #10;
        A = 4'b0011 ; B = 4'b0011 ; sel = 3'b100;
        #10;
        A = 4'b1011 ; B = 4'b0000 ; sel = 3'b101;
        #10;
        A = 4'b1011 ; B = 4'b0000 ; sel = 3'b110;
        #10
        A = 4'b0111 ; B = 4'b0000 ; sel = 3'b111;
        #10;
        $finish;
    
    end
endmodule
