module d_latch(
    input logic d,     // Data input
    input logic en,    // Enable signal
    input logic rst,   // Active-low reset
    output logic q     // Output
);

always_latch begin
    if (!rst)      // Active-low reset
        q <= 0;    
    else if (en)   // If enabled, Q follows D
        q <= d;
end

endmodule
