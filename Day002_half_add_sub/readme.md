# Half Adder & Half Subtractor

## 1. Half Adder

### **Theory**
A **Half Adder** is a combinational circuit that performs the **addition** of two binary digits. It produces two outputs:
- **Sum (S)**: The XOR (`^`) of two inputs.
- **Carry (C)**: The AND (`&`) of two inputs.

### **Logic Equations**
- Sum: `S = A ⊕ B`
- Carry: `C = A • B`

### **Truth Table**

| A | B | Sum (S) | Carry (C) |
|---|---|--------|---------|
| 0 | 0 |   0    |    0    |
| 0 | 1 |   1    |    0    |
| 1 | 0 |   1    |    0    |
| 1 | 1 |   0    |    1    |


## 2. Half Subtractor

### **Theory**
A **Half Subtractor** is a combinational circuit that performs the **subtraction** of two binary digits. It produces two outputs:
- **Difference (D)**: The XOR (`^`) of two inputs.
- **Borrow (B_out)**: The NOT-AND operation (`A & ~B`), which indicates if a borrow is needed.

### **Logic Equations**
- Difference: `D = A ⊕ B`
- Borrow: `B_out = A' • B`

### **Truth Table**

| A | B | Difference (D) | Borrow (B_out) |
|---|---|--------------|--------------|
| 0 | 0 |      0       |      0       |
| 0 | 1 |      1       |      1       |
| 1 | 0 |      1       |      0       |
| 1 | 1 |      0       |      0       |


---

## **Key Differences Between Half Adder & Half Subtractor**
| Feature           | Half Adder          | Half Subtractor      |
|------------------|-------------------|---------------------|
| **Operation**    | Addition           | Subtraction         |
| **Sum / Difference** | `S = A ⊕ B`   | `D = A ⊕ B`       |
| **Carry / Borrow** | `C = A • B`   | `B_out = A' • B` |
| **Borrow Needed?** | No                | Yes (if A < B)      |

---



