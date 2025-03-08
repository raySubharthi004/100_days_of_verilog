# 8-to-3 Priority Encoder

## Overview

This repository contains the Verilog implementation of an 8-to-3 priority encoder. The priority encoder takes an 8-bit input and produces a 3-bit output that corresponds to the position of the highest priority active bit.

## Theory

### What is a Priority Encoder?

A priority encoder is a specialized type of encoder that handles multiple active inputs by establishing a priority system. When multiple input bits are active simultaneously, a priority encoder will output the code corresponding to the highest-priority active input, ignoring lower-priority inputs.

### 8-to-3 Priority Encoder Operation

The priority encoder in this implementation takes an 8-bit input (8 lines) and produces a 3-bit output (3 lines). The priority is assigned in descending order from the most significant bit (MSB) to the least significant bit (LSB):

- inp[7] has the highest priority
- inp[6] has the second highest priority
- ...
- inp[0] has the lowest priority

The output is a 3-bit binary code that represents the position (index) of the highest-priority active bit in the input. When no bits are active (input is all zeros), the output is 000.

### Priority Logic

The priority encoder uses a cascaded if-else structure to implement the priority logic:

1. First, check if inp[7] is 1. If yes, output 111 (decimal 7).
2. If not, check if inp[6] is 1. If yes, output 110 (decimal 6).
3. If not, check if inp[5] is 1. If yes, output 101 (decimal 5).
4. And so on...
5. Finally, if no input bits are 1, output 000 (decimal 0).

### Truth Table

Below is a truth table showing how this priority encoder behaves with various inputs:

| inp[7:0]    | out[2:0] | Description                   |
|-------------|----------|-------------------------------|
| 1xxxxxxx    | 111      | inp[7] is active (highest priority) |
| 01xxxxxx    | 110      | inp[6] is active, inp[7] is not |
| 001xxxxx    | 101      | inp[5] is active, higher bits are not |
| 0001xxxx    | 100      | inp[4] is active, higher bits are not |
| 00001xxx    | 011      | inp[3] is active, higher bits are not |
| 000001xx    | 010      | inp[2] is active, higher bits are not |
| 0000001x    | 010      | inp[1] is active, higher bits are not |
| 00000001    | 001      | inp[0] is active, higher bits are not |
| 00000000    | 000      | No bits are active            |

*Note: x represents a "don't care" condition - can be either 0 or 1*

### Important Observation

There is a specific design choice in this implementation where both inp[2] and inp[1] map to the same output value of 010 (decimal 2). This appears to be either a design choice or possibly a minor error in the original code.

### Applications

Priority encoders are widely used in:

1. **Interrupt controllers**: Prioritizing multiple interrupt sources in a processor
2. **Memory management**: Handling multiple memory access requests
3. **Resource allocation**: Determining which process gets access to a shared resource
4. **Arbitration systems**: Choosing among multiple competing requests
5. **Task schedulers**: Selecting the highest-priority task to execute

## Implementation Details

The Verilog implementation uses conditional statements within a combinational logic block (`always_comb`) to check input bits in order of decreasing priority:



## Testing

To thoroughly test this priority encoder, consider the following test cases:

1. **Single bit tests**: Activate only one input bit at a time
2. **Priority tests**: Activate multiple input bits simultaneously to verify that only the highest-priority bit is encoded
3. **All zeros test**: Verify the output when no inputs are active
4. **All ones test**: Verify the output when all inputs are active

## Comparison with Regular Encoders

Unlike a regular encoder which may produce unpredictable outputs when multiple inputs are active, a priority encoder:

1. Guarantees a predictable output based on a fixed priority scheme
2. Can handle any number of active inputs without ambiguity
3. Requires more complex logic but provides more robust behavior in systems where multiple signals may be active

## Possible Extensions

This basic priority encoder could be extended with:

1. **Valid bit output**: Add an output signal that indicates whether any input is active
2. **More input bits**: Scale to handle 16, 32, or more input bits
3. **Programmable priority**: Allow the priority order to be configurable
4. **One-hot encoded output**: Provide an alternative output format
