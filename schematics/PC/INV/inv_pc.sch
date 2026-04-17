v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -80 70 -70 {lab=vout}
N 30 -110 30 -40 {lab=IN}
N -20 -80 30 -80 {lab=IN}
N 70 -70 120 -70 {lab=vout}
N 70 -150 70 -140 {lab=vdd}
N 70 -110 90 -110 {lab=vdd}
N 90 -140 90 -110 {lab=vdd}
N 70 -140 90 -140 {lab=vdd}
N 70 -10 70 -0 {lab=vss}
N 70 -40 90 -40 {lab=vss}
N 90 -40 90 -0 {lab=vss}
N 70 -0 90 -0 {lab=vss}
C {symbols/nfet_03v3.sym} 50 -40 0 0 {name=M1
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 50 -110 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -20 -80 0 0 {name=p1 lab=IN
}
C {opin.sym} 120 -70 0 0 {name=p2 lab=OUT}
C {iopin.sym} 70 -150 3 0 {name=p3 lab=vdd}
C {iopin.sym} 70 0 1 0 {name=p4 lab=vss}
