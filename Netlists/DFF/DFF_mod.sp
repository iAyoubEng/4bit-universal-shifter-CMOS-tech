* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 18:15:45

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\DFF\dff3.sdb"
+ probetopmodule="DFF_mod"

.SUBCKT nand_mod a b y Gnd Vdd
M1 y a N2 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N2 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b y Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 y a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT Module0 x y Gnd Vdd
M1 y x Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 y x Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

* Main circuit: DFF_mod
XModule0_1 D N2 Gnd Vdd Module0
Xnand_mod_1 N2 CLK N7 Gnd Vdd nand_mod
Xnand_mod_2 D CLK N5 Gnd Vdd nand_mod
Xnand_mod_3 N5 Q~ Q Gnd Vdd nand_mod
Xnand_mod_4 N7 Q Q~ Gnd Vdd nand_mod
* End of main circuit: DFF_mod
