* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 18:15:04

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\and\and.sdb"
+ probetopmodule="and1"

.SUBCKT Module0 x y Gnd Vdd
M1 y x Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 y x Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

* Main circuit: and1
XModule0_1 N1 y Gnd Vdd Module0
M1 N1 a N2 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N2 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b N1 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N1 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
* End of main circuit: and1
