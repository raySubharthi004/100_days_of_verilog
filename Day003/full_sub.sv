`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Subharthi Ray
// 
// Create Date: 28.02.2025 03:38:21
// Design Name: Full Subtractor
// Module Name: full_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Full Subtractor implementation using two Half Subtractors.
//
// Dependencies: half_sub module must be defined.
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module full_sub(
    input logic a, b, b_in, 
    output logic diff, b_out
    );
    
    // Intermediate signals
    logic diff_inter, borr_inter, borrow_inter2;

    // First half subtractor
    half_sub u0 ( 
        .a(a), 
        .b(b), 
        .diff(diff_inter), 
        .borrow(borr_inter) 
    );

    // Second half subtractor
    half_sub u1 ( 
        .a(diff_inter),   // Should be diff_inter, not borr_inter
        .b(b_in), 
        .diff(diff), 
        .borrow(borrow_inter2) 
    );

    // OR gate for final borrow-out
    assign b_out = borr_inter | borrow_inter2;

endmodule
