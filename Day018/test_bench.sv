`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 10:01:00
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

    logic clk , rst , q_d , q_jk  , q_t;
    logic d , j , k , t;
    
    d_flip d1( .d(d) , .clk(clk) , .rst(rst)  , .q(q_d)  );    
    jk_flip jk1( .clk(clk) , .j(j) ,.k(k) , .rst(rst) , .q(q_jk)  );
    t_flip t1( .clk(clk) , .rst(rst) , .t(t) , .q(q_t) );
    
    initial clk = 0;
    
    always #5 clk = ~clk;
    
    initial begin
        
       rst = 1;  
       d = 0 ; j = 0; k =  0; t = 0;
       
       #20;
       rst = 0;
       d = 0 ; j = 0 ; k = 1 ; t = 0;
       
       #20
       d = 1 ; j = 1 ; k = 0 ; t = 1;
       
       #20
       d = 0 ; j = 1 ; k = 1 ; t = 1;
       
       #20
       d = 0 ; j = 1 ; k = 1 ; t = 1;
       
       #20
       d = 1 ; j = 1 ; k = 0 ; t = 1;
       
       #20
       d = 0 ; j = 0 ; k = 0 ; t = 0;
       
       #20
       $finish;    
    end
    
      
endmodule
