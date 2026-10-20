* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 18:14:22

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\2to1 mux\2_to_1_mux.sdb"
+ probetopmodule="mux"

.SUBCKT Module0 x y Gnd Vdd
M1 y x Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 y x Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT and1 a b y Gnd Vdd
XModule0_1 N2 y Gnd Vdd Module0
M1 N2 a N3 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N3 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b N2 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N2 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT or1 a b y Gnd Vdd
XModule0_1 N13 y Gnd Vdd Module0
M1 Gnd b N13 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N13 a Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 N13 b N11 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N11 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

* Main circuit: mux
Xand1_1 I0 N4 N5 Gnd Vdd and1
Xand1_2 I1 s0 N1 Gnd Vdd and1
XModule0_1 s0 N4 Gnd Vdd Module0
Xor1_1 N5 N1 y Gnd Vdd or1
* End of main circuit: mux
