
# 3-to-8 Decoder

## Overview

This repository contains a Verilog implementation of a 3-to-8 decoder. A decoder takes a compact binary input and produces an expanded output where only one bit is active based on the input value.

## Theory

### What is a Decoder?

A decoder is a combinational logic circuit that converts an N-bit binary input code into 2^N output lines such that only one output line is activated corresponding to the input code. Decoders perform the opposite function of encoders.

### 3-to-8 Decoder Operation

The 3-to-8 decoder in this implementation takes a 3-bit input and activates exactly one of the 8 output lines based on the binary value of the input. This type of decoder is often called a "binary-to-one-hot" decoder because it produces a one-hot code (a code with only one bit set to 1 and all others set to 0).

For example:
- When the input is 000, output line 0 (least significant bit) is activated (00000001)
- When the input is 001, output line 1 is activated (00000010)
- When the input is 010, output line 2 is activated (00000100)
- And so on...

### Truth Table

The complete truth table for the 3-to-8 decoder:

| inp[2:0] | out[7:0]    |
|----------|-------------|
| 000      | 00000001    |
| 001      | 00000010    |
| 010      | 00000100    |
| 011      | 00001000    |
| 100      | 00010000    |
| 101      | 00100000    |
| 110      | 01000000    |
| 111      | 10000000    |

### Applications

Decoders are fundamental building blocks in digital systems and have numerous applications:

1. **Memory Systems**: Address decoding in RAM and ROM to select specific memory locations
2. **Multiplexer Control**: Generating select signals for multiplexers
3. **Instruction Decoding**: Converting opcodes to control signals in processors
4. **Display Systems**: Converting binary values to seven-segment display patterns
5. **Data Bus Routing**: Directing data to specific destinations
6. **IO Port Selection**: Activating specific input/output ports in microcontrollers
7. **Demultiplexing**: Distributing a single input signal to one of several output lines

### Design Considerations

When implementing a decoder, several factors are typically considered:

1. **Propagation Delay**: Time taken for the output to respond to a change in input
2. **Power Consumption**: Especially important in low-power applications
3. **Fan-out**: The number of gate inputs that the decoder output can drive
4. **Noise Immunity**: Resistance to electrical noise that could cause incorrect decoding
5. **Implementation Technology**: Different technologies (CMOS, TTL, etc.) offer different trade-offs

### Extensions to Basic Decoders

The simple 3-to-8 decoder can be extended in several ways:

1. **Enable Input**: Adding an enable signal that activates or deactivates the entire decoder
2. **Cascading**: Using multiple smaller decoders to create larger ones (e.g., using two 3-to-8 decoders to create a 4-to-16 decoder)
3. **Active-Low Outputs**: Inverting the outputs for use with active-low logic
4. **Seven-Segment Decoder**: A specialized decoder that converts binary inputs to patterns for seven-segment displays
5. **BCD Decoder**: Decodes Binary-Coded Decimal inputs (0-9) rather than using the full binary range

## Testing Strategy

A comprehensive test plan for a 3-to-8 decoder would include:

1. **Functional Verification**: Testing each input combination to ensure the correct output is activated
2. **Timing Analysis**: Measuring propagation delays from input changes to output changes
3. **Load Testing**: Verifying operation under different output load conditions
4. **Corner Cases**: Testing at extreme voltage and temperature conditions
5. **Fault Injection**: Verifying behavior when inputs arrive at slightly different times

## Comparison with Encoders

While encoders convert from a one-hot or multi-hot code to a binary code, decoders perform the reverse operation:

| Characteristic | Encoder | Decoder |
|----------------|---------|---------|
| Input format   | One-hot or multi-hot | Binary |
| Output format  | Binary  | One-hot |
| Typical use    | Compression | Expansion |
| Common size    | 2^N-to-N | N-to-2^N |

# 1-to-8 Demultiplexer (DEMUX)

## Overview

This repository contains a Verilog implementation of a 1-to-8 demultiplexer. A demultiplexer (commonly abbreviated as "demux") routes a single input signal to one of multiple output lines based on the value of a selection input.

## Theory

### What is a Demultiplexer?

A demultiplexer is a combinational logic circuit that takes a single input data line and routes it to one of several possible output lines based on the value of selection inputs. It performs the inverse operation of a multiplexer (which selects one of many inputs and routes it to a single output).

### 1-to-8 Demultiplexer Operation

A 1-to-8 demultiplexer has:
- 1 data input line
- 3 selection lines (to select one of 2³ = 8 outputs)
- 8 output lines

The selection input (a 3-bit value) determines which of the 8 output lines receives the input signal. Only one output line should be active at a time, and it should carry the same value as the input. All other output lines should be inactive (typically set to 0).

### Truth Table

A proper 1-to-8 demultiplexer should function according to this truth table:

| sel[2:0] | inp | out[7:0] |
|----------|-----|----------|
| 000      | 0   | 00000000 |
| 000      | 1   | 00000001 |
| 001      | 0   | 00000000 |
| 001      | 1   | 00000010 |
| 010      | 0   | 00000000 |
| 010      | 1   | 00000100 |
| 011      | 0   | 00000000 |
| 011      | 1   | 00001000 |
| 100      | 0   | 00000000 |
| 100      | 1   | 00010000 |
| 101      | 0   | 00000000 |
| 101      | 1   | 00100000 |
| 110      | 0   | 00000000 |
| 110      | 1   | 01000000 |
| 111      | 0   | 00000000 |
| 111      | 1   | 10000000 |

### Applications

Demultiplexers are used in various digital systems:

1. **Data Distribution**: Routing a single data source to multiple destinations
2. **Communication Systems**: Directing signals to different channels or receivers
3. **Memory Systems**: Address decoding in conjunction with decoders
4. **I/O Control**: Routing control signals to different peripheral devices
5. **Time-Division Multiplexing (TDM)**: Recovering individual signals from a time-multiplexed stream
6. **Bus Systems**: Routing data from a shared bus to specific components
7. **Digital-to-Analog Conversion**: In some DAC architectures

### Differences Between Decoders and Demultiplexers

Although decoders and demultiplexers are similar, they have distinct differences:

1. **Functionality**:
   - Decoder: Converts a binary code to a one-hot code (activates one of 2^n output lines)
   - Demultiplexer: Routes a single input signal to one of several output lines

2. **Inputs**:
   - Decoder: Only selection inputs
   - Demultiplexer: Selection inputs plus a data input

3. **Behavior with Enable**:
   - Decoder with enable: Functions like a demultiplexer where the enable acts as the data input
   - Demultiplexer: The data input determines the value that appears on the selected output line

### Design Considerations

When implementing a demultiplexer, several factors should be considered:

1. **Propagation Delay**: Time taken for the input to reach the selected output
2. **Fan-out Capability**: How many devices can be driven by each output
3. **Power Consumption**: Especially important in battery-operated devices
4. **Cascading**: Using multiple smaller demultiplexers to build larger ones
5. **Glitch Prevention**: Ensuring clean transitions when the selection changes

### Implementation Methods

Demultiplexers can be implemented using various methods:

1. **Using Basic Gates**: Implementing the boolean expressions with AND, OR, and NOT gates
2. **Using Decoders**: A decoder with an additional AND gate for each output line
3. **Using Multiplexers**: Configuring multiplexers to function as demultiplexers
4. **Using Tri-state Buffers**: Enabling only the selected output buffer
5. **Using Transmission Gates**: CMOS implementation using transmission gate switches

## Testing Strategy

A comprehensive test plan for a 1-to-8 demultiplexer would include:

1. **Functional Verification**: Testing all selection combinations with both 0 and 1 as input
2. **Transition Testing**: Verifying correct operation during selection changes
3. **Timing Analysis**: Measuring propagation delays from input to each output
4. **Load Testing**: Verifying operation under different output load conditions
5. **Noise Immunity**: Testing resistance to noise on selection lines
