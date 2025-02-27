# **3:8 Multiplexer (MUX)**

A **Multiplexer (MUX)** is a combinational circuit that selects **one** out of **multiple input signals** and forwards it to a single output line, based on the select lines.

A **3:8 Multiplexer** has:
- **3 selection inputs (`S2, S1, S0`)**
- **8 data inputs (`D0` to `D7`)**
- **1 output (`Y`)**

---

## **📌 Working Principle**
- The three **selection lines (`S2, S1, S0`)** determine which **one of the eight inputs** (`D0` to `D7`) will be passed to the output.
- It acts like a **switch**, allowing only one input to pass through at a time.
- The **truth table** defines which input is selected for a given combination of select lines.

---

## **📝 Truth Table**
| **S2** | **S1** | **S0** | **Selected Input (`Y`)** |
|--------|--------|--------|--------------------------|
| 0      | 0      | 0      | D0                       |
| 0      | 0      | 1      | D1                       |
| 0      | 1      | 0      | D2                       |
| 0      | 1      | 1      | D3                       |
| 1      | 0      | 0      | D4                       |
| 1      | 0      | 1      | D5                       |
| 1      | 1      | 0      | D6                       |
| 1      | 1      | 1      | D7                       |

---

## **🔢 Boolean Expression**
The output `Y` of a **3:8 MUX** can be expressed using the selection inputs (`S2, S1, S0`) as:

\[
Y = (D_0 \cdot \overline{S_2} \cdot \overline{S_1} \cdot \overline{S_0}) +
    (D_1 \cdot \overline{S_2} \cdot \overline{S_1} \cdot S_0) +
    (D_2 \cdot \overline{S_2} \cdot S_1 \cdot \overline{S_0}) +
    (D_3 \cdot \overline{S_2} \cdot S_1 \cdot S_0) +
    (D_4 \cdot S_2 \cdot \overline{S_1} \cdot \overline{S_0}) +
    (D_5 \cdot S_2 \cdot \overline{S_1} \cdot S_0) +
    (D_6 \cdot S_2 \cdot S_1 \cdot \overline{S_0}) +
    (D_7 \cdot S_2 \cdot S_1 \cdot S_0)
\]

where:
- **\(\overline{S_2}\) means NOT \( S_2 \)**
- **\(\overline{S_1}\) means NOT \( S_1 \)**
- **\(\overline{S_0}\) means NOT \( S_0 \)**

---

## **✅ Key Takeaways**
✔ A **3:8 MUX** selects **one of eight inputs** based on **3 select lines**  
✔ The **output is determined by the truth table**  
✔ The **Boolean equation** represents the MUX functionality  

---

