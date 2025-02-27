Today is abput basic logic gates 

~  --> for not gate
|  --> for or gate
&  --> for and gate
^  --> for the xor gate

The initial block is used for initialization in testbenches or sequential circuits (e.g., flip-flops).
Combinational logic (like basic gates) should be described using always_comb or continuous assignments (assign).

to finish your simulation after a certain time use this
initial begin
  #100; // time period of your simulation
  $finish;
end


