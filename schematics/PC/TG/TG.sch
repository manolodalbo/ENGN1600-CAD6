v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -30 170 -30 {lab=in}
N -50 30 170 30 {lab=out}
N -50 0 -40 -0 {lab=vss}
N 150 0 170 0 {lab=vdd}
C {symbols/pfet_03v3.sym} 190 0 0 1 {name=M1
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} -70 0 0 0 {name=M2
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
C {ipin.sym} 50 -30 1 0 {name=p1 lab=in}
C {opin.sym} 60 30 1 0 {name=p2 lab=out}
C {iopin.sym} -40 0 0 0 {name=p3 lab=vss}
C {iopin.sym} 150 0 2 0 {name=p4 lab=vdd}
C {iopin.sym} -90 0 2 0 {name=p5 lab=c}
C {iopin.sym} 210 0 0 0 {name=p6 lab=cbar}
