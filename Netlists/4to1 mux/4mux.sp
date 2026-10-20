* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 18:14:51

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\4to1 mux\4_to_1_mux.sdb"
+ probetopmodule="4mux"

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

.SUBCKT mux I0 I1 s0 y Gnd Vdd
Xand1_1 I0 N2 N11 Gnd Vdd and1
Xand1_2 I1 s0 N10 Gnd Vdd and1
XModule0_1 s0 N2 Gnd Vdd Module0
Xor1_1 N11 N10 y Gnd Vdd or1
.ENDS

* Main circuit: 4mux
Xmux_1 i0 i1 s0 N3 Gnd Vdd mux
Xmux_2 i2 i3 s0 N7 Gnd Vdd mux
Xmux_3 N3 N7 s1 y Gnd Vdd mux
* End of main circuit: 4mux
