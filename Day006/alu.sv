`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 01.03.2025 07:57:40
// Design Name: 
// Module Name: bit_1_alu
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


module alu(
    input logic [3:0]a , b, 
    input logic [2:0] sel,
    output logic [3:0]alu_out,
    output logic c_out    
    );
    
    always_comb begin
        case(sel)
        
            3'b000 : {c_out , alu_out} = a + b; // add
            3'b001 : {c_out , alu_out} = a - b; // substract
            3'b010 : alu_out = a & b;           //and operation
            3'b011 : alu_out = a | b;           //or operation
            3'b100 : alu_out = a ^ b;           //xor operation
            3'b101 : alu_out = {a[2:0] , a[3]}; //rotate left 1bit
            3'b110 : alu_out = {a[0] ,  a[3:1]};//rotate right 1 bit
            3'b111 : alu_out = a<<1;            //left shift 1 bit
            
            default : alu_out = a + b;
         endcase
               
    end
endmodule
