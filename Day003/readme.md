# Full Adder & Full Subtractor

## 1. Full Adder

### **Theory**
A **Full Adder** is a combinational circuit that performs the **addition** of three binary inputs:
- `A` (First bit)
- `B` (Second bit)
- `Cin` (Carry input from the previous stage)

It produces two outputs:
- **Sum (S)**: The result of the addition.
- **Carry-out (Cout)**: The carry bit to the next stage.

### **Logic Equations**
- Sum: `S = A ⊕ B ⊕ Cin`
- Carry: `Cout = (A • B) + (B • Cin) + (A • Cin)`

### **Truth Table**

| A | B | Cin | Sum (S) | Carry (Cout) |
|---|---|-----|--------|-------------|
| 0 | 0 |  0  |   0    |      0      |
| 0 | 0 |  1  |   1    |      0      |
| 0 | 1 |  0  |   1    |      0      |
| 0 | 1 |  1  |   0    |      1      |
| 1 | 0 |  0  |   1    |      0      |
| 1 | 0 |  1  |   0    |      1      |
| 1 | 1 |  0  |   0    |      1      |
| 1 | 1 |  1  |   1    |      1      |


# Full Subtractor

## 📝 Theory
A **Full Subtractor** is a combinational circuit that performs the **subtraction** of three binary inputs:
- `A` (Minuend)
- `B` (Subtrahend)
- `Bin` (Borrow input from the previous stage)

It produces two outputs:
- **Difference (D)**: The result of the subtraction.
- **Borrow-out (Bout)**: The borrow bit to the next stage.

## 🔢 Logic Equations
- **Difference**: `D = A ⊕ B ⊕ Bin`
- **Borrow-out**: `Bout = (~A • B) + (~A • Bin) + (B • Bin)`

## 📋 Truth Table

| A | B | Bin | Difference (D) | Borrow (Bout) |
|---|---|-----|--------------|--------------|
| 0 | 0 |  0  |      0       |      0       |
| 0 | 0 |  1  |      1       |      1       |
| 0 | 1 |  0  |      1       |      1       |
| 0 | 1 |  1  |      0       |      1       |
| 1 | 0 |  0  |      1       |      0       |
| 1 | 0 |  1  |      0       |      0       |
| 1 | 1 |  0  |      0       |      0       |
| 1 | 1 |  1  |      1       |      1       |

