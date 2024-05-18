# 8BIT_SYNCHRONOUS_UP-DOWN_COUNTER
3 Aim:
To stimulate and synthesis 4bit Ripple counter using Vivado.

# Software Required:
vivado 2023.2 software.

# Procedure:
STEP:1 Start the vivado software, Select and Name the New project.

STEP:2 Select the device family, device, package and speed.

STEP:3 Select new source in the New Project and select Verilog Module as the Source type.

STEP:4 Type the File Name and module name and Click Next and then finish button. Type the code and save it.

STEP:5 Select the run simulation and then run Behavioral Simulation in the Source Window and click the check syntax.

STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.

STEP:7 compare the output with truth table.
![image](https://github.com/RESMIRNAIR/8BIT_SYNCHRONOUS_UP-DOWN_COUNTER/assets/154305926/e1af47bf-e77f-446e-9fe0-e0ca3d1a7cfd)
# Here is a diagram showing the circuit in the "up" counting mode
![image](https://github.com/RESMIRNAIR/8BIT_SYNCHRONOUS_UP-DOWN_COUNTER/assets/154305926/8a6dd34b-5226-4d93-9bff-d87ab85aeabc)
# Here, shown in the "down" counting mode
![image](https://github.com/RESMIRNAIR/8BIT_SYNCHRONOUS_UP-DOWN_COUNTER/assets/154305926/9a30ebd6-6692-48d0-b64b-41b896d6de4a)
# Program:
```
module ripple_carry_counter(q, clk, reset);
output [3:0] q;
input clk, reset;
T_FF tff0(q[0], clk, reset);
T_FF tff1(q[1], q[0], reset);
T_FF tff2(q[2], q[1], reset);
T_FF tff3(q[3], q[2], reset);
endmodule
module T_FF(q, clk, reset);
output q;
input clk, reset;
wire d;
D_FF dff0(q, d, clk, reset);
not n1(d, q);
endmodule
module D_FF(q, d, clk, reset);
output q;
input d, clk, reset;
reg q;
always @(posedge reset or negedge clk)
if (reset)
q = 1'b0;
else
q = d;
endmodule
```
# Output:
![image](https://github.com/RESMIRNAIR/8BIT_SYNCHRONOUS_UP-DOWN_COUNTER/assets/160302888/ab35ffd8-37e6-4a2d-aac7-7c586ccfe8d8)
# Result:
Thus the verilog program for 4bit Ripple Counter has been simulated and verified successfully.
