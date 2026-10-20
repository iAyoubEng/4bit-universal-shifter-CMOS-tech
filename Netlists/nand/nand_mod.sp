* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 18:16:11

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\nand\nand.sdb"
+ probetopmodule="nand_mod"

* Main circuit: nand_mod
M1 y a N15 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N15 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b y Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 y a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
* End of main circuit: nand_mod
