v {xschem version=3.4.4 file_version=1.2
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2024 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
K {}
G {}
V {}
S {}
E {}
T {Spice .SUBCKT for Q1_MSA26F} 6870 -4880 0 0 0.666667 0.666667 { vcenter=true}
T {SDB -- 3.31.2003} 7250 -4800 0 0 0.333333 0.333333 { vcenter=true}
T {This is part of the model for the MSA-2643} 6790 -5080 2 1 0.333333 0.333333 {}
T {-- a silicon bipolar amp from Agilent.} 6790 -5050 2 1 0.333333 0.333333 {}
T {The model is detailed in Agilent's app note 5980-2396E} 6790 -5020 2 1 0.333333 0.333333 {}






C {BJT_Model.sym} 6540 -5200 0 0 {name=Q1
model-name=BJTM1_Q1
file=model/BJTM1_Q1.mod
device=NPN_TRANSISTOR
}
C {diode-1.sym} 6340 -5380 0 0 {name=D1
model-name=DIODEM1_Q1
file=model/DiodeM1_Q1.mod
device=DIODE
}
C {diode-1.sym} 6430 -5200 1 0 {name=D2
model-name=DIODEM2_Q1
file=model/DiodeM2_Q1.mod
device=DIODE
}
C {capacitor-1.sym} 6340 -5510 0 0 {name=Ccox
value=1.851e-14F
device=CAPACITOR
symversion=0.1
}
C {capacitor-1.sym} 6320 -5060 3 0 {name=Ceox
value=6.01e-15F
device=CAPACITOR
symversion=0.1
}
C {resistor-1.sym} 6170 -5240 0 0 {name=Rbx
value=3.723
model=TC1=0.14e-2
device=RESISTOR
}
C {resistor-1.sym} 6610 -5590 3 0 {name=Rcx
value=6.386
model=TC1=0.113e-2
device=RESISTOR
}
C {resistor-1.sym} 6610 -4980 3 0 {name=Re
value=2.158
device=RESISTOR
}
C {spice-subcircuit-IO-1.sym} 6630 -5740 3 0 {name=P3
device=spice-IO
}
C {spice-subcircuit-IO-1.sym} 6030 -5280 2 0 {name=P2
device=spice-IO
}
C {spice-subcircuit-IO-1.sym} 6570 -4900 1 0 {name=P1
device=spice-IO
}
C {spice-subcircuit-LL-1.sym} 6810 -5530 0 0 {name=A1
model-name=Q1_MSA26F
device=spice-subcircuit-LL
}
C {title-B.sym} 5850 -4780 0 0 {}

N 6450 -5250 6450 -5200 {}
N 6300 -5250 6300 -5150 {}
N 6600 -5200 6600 -5070 {}
N 6450 -5110 6450 -5090 {}
N 6450 -5090 6600 -5090 {}
N 6300 -5060 6300 -4950 {}
N 6300 -4950 6600 -4950 {}
N 6600 -4980 6600 -4900 {}
N 6260 -5250 6540 -5250 {}
N 6030 -5250 6170 -5250 {}
N 6130 -5400 6340 -5400 {}
N 6600 -5590 6600 -5300 {}
N 6430 -5400 6600 -5400 {}
N 6430 -5530 6600 -5530 {}
N 6130 -5530 6340 -5530 {}
N 6130 -5530 6130 -5250 {}
N 6600 -5740 6600 -5680 {}

