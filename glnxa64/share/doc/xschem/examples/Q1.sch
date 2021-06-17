v {xschem version=2.9.5_RC6 file_version=1.1}
G {}
V {}
S {}
E {}
N 440 -160 440 -100 {lab=P1}
N 440 -350 440 -220 {lab=E}
N 440 -600 440 -410 {lab=C}
N 440 -720 440 -660 {lab=P3}
N 340 -560 440 -560 {lab=C}
N 340 -460 440 -460 {lab=C}
N 140 -460 280 -460 {lab=P2}
N 140 -560 140 -460 {lab=P2}
N 140 -560 280 -560 {lab=P2}
N 220 -380 400 -380 {lab=B}
N 140 -380 160 -380 {lab=P2}
N 140 -460 140 -380 {lab=P2}
N 340 -240 440 -240 {lab=E}
N 340 -260 340 -240 {lab=E}
N 260 -140 440 -140 {lab=P1}
N 260 -260 260 -140 {lab=P1}
N 260 -380 260 -320 {lab=B}
N 340 -380 340 -320 {lab=B}
N 60 -380 140 -380 {lab=P2}
C {code.sym} 10 -190 0 0 {name=MODELS value="* This is the BJT model used in the Agilent MSA-26 model
* documented in 5980-2496E.pdf.
* Model entered 3.31.2003 by SDB
.model BJTM1_Q1   NPN(Bf=1e6 IKF=5.895e-1 ISE=2.838e-19 NE=1.006
+  VAF=44 NF=1 TF=5.37e-12 XTF=20 VTF=0.8 ITF=2.218e-1 PTF=22
+  XTB=0.7 BR=1 IKR=1.1e-2 NC=2 VAR=3.37 NR=1.005 TR=4e-9
+  EG=1.17 IS=4.475e-18 XTI=3 TNOM=21 CJC=2.921e-14
+  VJC=0.6775 MJC=0.3319 XCJC=4.398e-1 FC=0.8 CJE=7.546e-14 
+  VJE=0.9907 MJE=0.5063 RB=9.301 IRB=8.18e-5 RBM=0.1 KF=1.643e-23)

* This is a diode model used in the Agilent MSA-26 model
* documented in 5980-2496E.pdf.
* Model entered 3.31.2003 by SDB
.model DIODEM1_Q1   D(IS=1.405e-17 N=1 CJO=2.281e-14 
+  VJ=0.729 M=0.44 FC=0.8 TNOM=21)

* This is a diode model used in the Agilent MSA-26 model
* documented in 5980-2496E.pdf.
* Model entered 3.31.2003 by SDB
.model DIODEM2_Q1   D(IS=1e-24 N=1.0029 CJO=2.452e-14 
+  VJ=0.8971 M=0.2292 FC=0.8 TNOM=21)


"}
C {res.sym} 440 -630 0 0 {name=Rcx
value="6.386 
+ TC1=0.113e-2" 
footprint=1206 
device=resistor 
m=1}
C {res.sym} 440 -190 0 0 {name=Re value=2.158 footprint=1206 device=resistor m=1}
C {res.sym} 190 -380 3 1 {name=Rbx
value="3.723 
+ TC1=0.14e-2" 
footprint=1206 
device=resistor 
m=1}
C {npn.sym} 420 -380 0 0 {name=Q1 
model=BJTM1_Q1 
device=BJTM1_Q1 
footprint=SOT23 
area=1
pinnumber(B)=2
pinnumber(E)=1}
C {diode.sym} 310 -460 3 0 {name=D1 
model=DiodeM1_Q1 
area=1}
C {capa.sym} 310 -560 3 0 {name=Ccox
m=1 
value=1.851e-14 
footprint=1206 
device="ceramic capacitor"}
C {iopin.sym} 440 -720 0 0 {name=p1 lab=P3}
C {iopin.sym} 440 -100 0 0 {name=p2 lab=P1}
C {capa.sym} 260 -290 0 0 {name=Ceox 
m=1 
value=6.01e-15
footprint=1206 
device="ceramic capacitor"}
C {iopin.sym} 60 -380 0 1 {name=p3 lab=P2}
C {diode.sym} 340 -290 0 0 {name=D2
model=DiodeM2_Q1 
area=1}
C {title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {lab_pin.sym} 440 -430 0 1 {name=l2 sig_type=std_logic lab=C}
C {lab_pin.sym} 440 -310 0 1 {name=l3 sig_type=std_logic lab=E}
C {lab_wire.sym} 300 -380 0 1 {name=l4 sig_type=std_logic lab=B}
