`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 05:28:08
// Design Name: 
// Module Name: tb
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
    
    logic [7:0]A ;
    logic [3:0]sel;
    logic out;
    
    big_mux bm( .A(A) , .sel(sel) , .O(out) );
    
    initial begin
        A = 8'b0;
        sel = 4'b0;
        #10;
        A = 8'haa; sel = 4'd0;
        #10;
        for (int i = 0 ;  i < 7 ; i++)  begin      
            sel <= sel + 4'd1;  
            #10 ;
        end
            
       #100;
       $finish;
                   
    end
    
endmodule
