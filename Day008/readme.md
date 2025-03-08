# 8-to-3  Encoder

## Overview

This repository contains the Verilog implementation of an 8-to-3 encoder. The encoder takes an 8-bit input and produces a 3-bit output that represents which bits in the input are active.

## Theory

### What is an Encoder?

An encoder is a combinational logic circuit that converts information from one format to another. In digital systems, encoders typically convert from a higher number of input lines to a lower number of output lines, effectively "encoding" the information more compactly.

### 8-to-3 Encoder Operation

The encoder in this repository takes an 8-bit input (8 lines) and produces a 3-bit output (3 lines). This particular implementation is based on a specific encoding scheme where:

- The first output bit (out[0]) is set if any of the odd-indexed bits of the input (inp[1], inp[3], inp[5], inp[7]) are '1'.
- The second output bit (out[1]) is set if any of the input bits inp[2], inp[3], inp[6], or inp[7] are '1'.
- The third output bit (out[2]) is set if any of the input bits inp[4], inp[5], inp[6], or inp[7] are '1'.

This can be represented by the following boolean expressions:

```
out[0] = inp[1] | inp[3] | inp[5] | inp[7]
out[1] = inp[2] | inp[3] | inp[6] | inp[7]
out[2] = inp[4] | inp[5] | inp[6] | inp[7]
```

### Truth Table

Below is a partial truth table showing how some key input values map to output values:

| inp[7:0] | out[2:0] | Description           |
|----------|-----------|-----------------------|
| 00000001 | 000       | Lowest bit active     |
| 00000010 | 001       | Bit 1 active          |
| 00000100 | 010       | Bit 2 active          |
| 00001000 | 001       | Bit 3 active          |
| 00010000 | 100       | Bit 4 active          |
| 00100000 | 101       | Bit 5 active          |
| 01000000 | 110       | Bit 6 active          |
| 10000000 | 111       | Bit 7 active          |
| 00000000 | 000       | No bits active        |
| 11111111 | 111       | All bits active       |

### Applications

Encoders like this one are commonly used in:

1. **Memory addressing**: Converting decoded addresses back to binary
2. **Interrupt handling**: Prioritizing among multiple interrupt sources
3. **Keyboard encoding**: Converting key presses to binary codes
4. **Data compression**: Reducing data size by efficient encoding

## Implementation Details

The Verilog implementation uses a combinational logic block (`always_comb`) to define the behavior. This ensures that the output changes immediately when the input changes, without requiring a clock signal.

```verilog
module encoder(
    input logic [7:0]inp,
    output logic [2:0] out 
);
    
    always_comb begin
        out[0] = inp[1] | inp[3] | inp[5] | inp[7];
        out[1] = inp[2] | inp[3] | inp[6] | inp[7];
        out[2] = inp[4] | inp[5] | inp[6] | inp[7];
    end
    
endmodule
```

## Testing

To test this encoder, you would typically want to verify all possible input combinations or at least a strategic subset. A testbench might include:

1. Single bit tests (only one input bit active at a time)
2. Multiple bit tests (various combinations of input bits)
3. Edge cases (all bits on, all bits off)

## Extensions

This basic encoder could be extended to:

1. Include an enable input
2. Add priority encoding (where only the highest-order active bit is encoded)
3. Implement validity checking (detection of multiple active inputs)
4. Expand to handle more input bits
