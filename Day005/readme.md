# 4-Bit Ripple Carry Adder

## Overview
A **4-bit ripple carry adder** is a combinational circuit used to perform the addition of two 4-bit binary numbers. It is constructed using **four 1-bit full adders**, where each full adder is built using **two half adders** and an OR gate.

## Theory

### Half Adder
A half adder is the simplest combinational circuit for binary addition. It takes two binary inputs and produces a **sum (S)** and a **carry (Cout)**.

| Input A | Input B | Sum (S) | Carry (Cout) |
|---------|---------|---------|--------------|
| 0       | 0       | 0       | 0            |
| 0       | 1       | 1       | 0            |
| 1       | 0       | 1       | 0            |
| 1       | 1       | 0       | 1            |

#### Boolean Equations:
- Sum: `S = A ⊕ B`
- Carry: `Cout = A ⋅ B`

### Full Adder
A full adder extends the half adder by including a carry-in (`Cin`). It is constructed using two half adders and an OR gate.

| Input A | Input B | Carry In (Cin) | Sum (S) | Carry Out (Cout) |
|---------|---------|---------------|---------|--------------|
| 0       | 0       | 0             | 0       | 0            |
| 0       | 0       | 1             | 1       | 0            |
| 0       | 1       | 0             | 1       | 0            |
| 0       | 1       | 1             | 0       | 1            |
| 1       | 0       | 0             | 1       | 0            |
| 1       | 0       | 1             | 0       | 1            |
| 1       | 1       | 0             | 0       | 1            |
| 1       | 1       | 1             | 1       | 1            |

#### Boolean Equations:
- Sum: `S = A ⊕ B ⊕ Cin`
- Carry Out: `Cout = (A ⋅ B) + (Cin ⋅ (A ⊕ B))`

### 4-Bit Ripple Carry Adder
A 4-bit ripple carry adder consists of **four full adders** connected in series. The carry-out of each stage is passed as the carry-in to the next stage.

#### Structure:
1. **First Full Adder**: Adds the least significant bits (LSBs) and produces a sum and carry.
2. **Second Full Adder**: Takes the next bits and the carry from the previous stage.
3. **Third Full Adder**: Adds the third bits with the carry from the second stage.
4. **Fourth Full Adder**: Adds the most significant bits (MSBs) with the carry from the third stage.

The final carry-out represents an overflow if it is `1`.

## Timing Analysis (Propagation Delay)
Since this is a **ripple carry adder**, the carry propagation creates a delay. The worst-case delay occurs when all bits propagate the carry.

- A **half adder** has a delay of **1 XOR gate + 1 AND gate**.
- A **full adder** has a delay of **2 XOR gates + 2 AND gates + 1 OR gate**.

If we assume:
- **XOR gate delay = τ**
- **AND gate delay = τ**
- **OR gate delay = τ**

The delay for a single **full adder** is:
### T_FA = 2τ + 2τ + τ = 5τ

For a **4-bit ripple carry adder**, the worst-case delay is:
### T_4bit = 4 × (5τ) = 20τ


Thus, the total computation time is **20τ**, where τ is the delay of a basic logic gate.

## Advantages
- Simple and easy to implement.
- Requires fewer logic gates compared to more advanced adders.

## Disadvantages
- **Propagation delay** increases with the number of bits.
- Not efficient for large bit-width additions.

## Conclusion
The **4-bit ripple carry adder** is a fundamental circuit in digital electronics, demonstrating how multiple 1-bit full adders can be cascaded to perform multi-bit binary addition. However, for high-speed applications, advanced adders like **carry-lookahead adders (CLA)** are preferred.

