# 4-1-MUX-Timing-Analysis
4:1 MUX Implementation and Timing Analysis using OpenSTA
In this project 4:1 multiplexer(MUX) is implemented with the help of 2:1 multiplexers.
Design is created in Verilog.
The 2:1 MUX is used from toy.lib.
Timing analysis is conducted using OpenSTA to check whether the design satisfies its timing requirements.
The timing constraints for this design are specified in MUX_4_1.sdc

Verilog code:

module MUX_4_1(
    input clk,
    input s0,
    input s1,   
    input  a,           
    input  b,           
    input  c,           
    input  d,           
    output y           
);   
    wire y0, y1;
    MUX2 M1(.I0(a),.I1(b),.S(s1),.Z(y0));
    MUX2 M2(.I0(c),.I1(d),.S(s1),.Z(y1));
    MUX2 M3(.I0(y0),.I1(y1),.S(s0),.Z(y));   
endmodule

test.tcl    :

read_liberty toy.lib
read_verilog top.v
link_design top
read_sdc top.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full


Slack in Timing Analysis
Slack: Slack is the difference between the required arrival time and the actual arrival time of a signal at a particular point in a digital circuit.
Positive Slack: Indicates that the signal arrives earlier than required, meaning the design meets or exceeds the timing requirements.
Zero Slack: Indicates that the signal arrives exactly on time, meeting the timing requirements without any margin.
Negative Slack: Indicates that the signal arrives later than required, meaning the design does not meet the timing requirements and there is a timing violation.

Timing Analysis:
![image](https://github.com/user-attachments/assets/32290fd6-6c7e-44fc-a906-11254eb4c8b7)
![image](https://github.com/user-attachments/assets/5046d604-80e2-4347-9d4c-4844951c5a8c)

Conclusion: Positive Slack in all cases.
            The above results indicate that all timing constraints defined in the current design are satisfied, and there is no timing violation.

                                                                        Thank You!

