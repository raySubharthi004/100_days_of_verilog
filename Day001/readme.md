# Basic Logic Gates

Today is about basic logic gates:

- `(~)`  → NOT gate  
- `(|)`  → OR gate  
- `(&)`  → AND gate  
- `(^)`  → XOR gate  

## Important Notes

- The **`initial` block** is used for initialization in **testbenches** or **sequential circuits** (e.g., flip-flops).  
- **Combinational logic** (like basic gates) should be described using `always_comb` or continuous assignments (`assign`).  

## Ending a Simulation  

To finish your simulation after a certain time, use this:

```verilog
initial begin
  #100; // Time period of your simulation
  $finish;
end


