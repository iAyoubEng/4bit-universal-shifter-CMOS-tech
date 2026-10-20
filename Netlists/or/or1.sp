* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 22:15:23

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\final_proj_vlsi\schematic\or\or.sdb"
+ probetopmodule="or1"

.SUBCKT Module0 x y Gnd Vdd
M1 y x Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 y x Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

* Main circuit: or1
XModule0_1 N1 y Gnd Vdd Module0
M1 Gnd b N1 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N1 a Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 N1 b N3 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N3 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
* End of main circuit: or1
