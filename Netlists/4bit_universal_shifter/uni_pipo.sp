* SPICE netlist written by S-Edit Win32 7.03
* Written on Oct 19, 2026 at 17:06:12

* Waveform probing commands
.probe
.options probefilename="sedit.dat"
+ probesdbfile="C:\Users\yooob\Desktop\4bit_reg\schematic\2to1 mux\universalShifter.sdb"
+ probetopmodule="uni_pipo"

.SUBCKT Module0 x y Gnd Vdd
M1 y x Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 y x Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT and1 a b y Gnd Vdd
XModule0_1 N1 y Gnd Vdd Module0
M1 N1 a N2 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N2 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b N1 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N1 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT or1 a b y Gnd Vdd
XModule0_1 N1 y Gnd Vdd Module0
M1 Gnd b N1 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N1 a Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 N1 b N2 Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 N2 a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT mux I0 I1 s0 y Gnd Vdd
Xand1_1 I0 N1 N11 Gnd Vdd and1
Xand1_2 I1 s0 N10 Gnd Vdd and1
XModule0_1 s0 N1 Gnd Vdd Module0
Xor1_1 N11 N10 y Gnd Vdd or1
.ENDS

.SUBCKT 4mux i0 i1 i2 i3 s0 s1 y Gnd Vdd
Xmux_1 i0 i1 s0 N8 Gnd Vdd mux
Xmux_2 i2 i3 s0 N12 Gnd Vdd mux
Xmux_3 N8 N12 s1 y Gnd Vdd mux
.ENDS

.SUBCKT nand_mod a b y Gnd Vdd
M1 y a N3 Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M2 N3 b Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
M3 Vdd b y Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
M4 y a Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
.ENDS

.SUBCKT DFF_mod CLK D Q Q~ Gnd Vdd
XModule0_1 D N7 Gnd Vdd Module0
Xnand_mod_1 N7 CLK N10 Gnd Vdd nand_mod
Xnand_mod_2 D CLK N6 Gnd Vdd nand_mod
Xnand_mod_3 N6 Q~ Q Gnd Vdd nand_mod
Xnand_mod_4 N10 Q Q~ Gnd Vdd nand_mod
.ENDS

* Main circuit: uni_pipo
X4mux_1 Q3 Gnd Q2 D3 s0 s1 N9 Gnd Vdd 4mux
X4mux_2 Q2 Q3 Q1 D2 s0 s1 N8 Gnd Vdd 4mux
X4mux_3 Q1 Q2 Q0 D1 s0 s1 N7 Gnd Vdd 4mux
X4mux_4 Q0 Q1 Gnd D0 s0 s1 N5 Gnd Vdd 4mux
XDFF_mod_1 clk N9 Q3 N4 Gnd Vdd DFF_mod
XDFF_mod_2 clk N8 Q2 N3 Gnd Vdd DFF_mod
XDFF_mod_3 clk N7 Q1 N2 Gnd Vdd DFF_mod
XDFF_mod_4 clk N5 Q0 N1 Gnd Vdd DFF_mod
* End of main circuit: uni_pipo
