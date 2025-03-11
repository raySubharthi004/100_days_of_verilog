`timescale 1ns / 1ps

module test_bench2;

    logic [4:0] A, B, Q;
    logic [5:0] R;

    signed_div uo(.A(A), .B(B), .Q(Q), .R(R));

    function integer signed_magnitude_5bit(input logic [4:0] val);
        if (val[4] == 1'b1) 
            signed_magnitude_5bit = -1 * val[3:0]; // Extract magnitude and negate
        else 
            signed_magnitude_5bit = val[3:0]; // Positive, so remain unchanged
    endfunction

    function integer signed_magnitude_6bit(input logic [5:0] val);
        if (val[5] == 1'b1) 
            signed_magnitude_6bit = -1 * val[4:0]; // Extract magnitude and negate
        else 
            signed_magnitude_6bit = val[4:0]; // Positive, so remain unchanged
    endfunction

    initial begin
        $monitor("A = %0d :: B = %0d :: Q = %0d :: R = %0d ::", 
                 signed_magnitude_5bit(A), 
                 signed_magnitude_5bit(B), 
                 signed_magnitude_5bit(Q), 
                 signed_magnitude_6bit(R));

        A = 5'b00000 ; B = 5'b00000; // 0, 0  
        #10;
        A = 5'b10001 ; B = 5'b00000; // -1, 0
        #10;
        A = 5'b11111 ; B = 5'b00010; // -15, 2
        #10;
        A = 5'b11111 ; B = 5'b10010; // -15, -2
        #10;
        A = 5'b01111 ; B = 5'b10010; // 15, -2
        #10;
        A = 5'b01111 ; B = 5'b00010; // 15, 2
        #10;    

        $finish;
    end
endmodule
