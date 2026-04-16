v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -10 100 10 {lab=#net1}
N 100 70 100 100 {lab=out}
N 100 160 100 180 {lab=#net2}
N 60 40 60 130 {lab=in}
N 100 240 100 250 {lab=vss}
N 100 -90 100 -70 {lab=vdd}
C {symbols/pfet_03v3.sym} 80 -40 0 0 {name=M1
L=0.28u
W=4u
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
C {symbols/pfet_03v3.sym} 80 40 0 0 {name=M2
L=0.28u
W=4u
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
C {symbols/nfet_03v3.sym} 80 130 0 0 {name=M3
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 80 210 0 0 {name=M4
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
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 60 80 0 0 {name=p1 lab=in}
C {opin.sym} 100 80 0 0 {name=p2 lab=out}
C {iopin.sym} 100 -90 3 0 {name=p3 lab=vdd}
C {iopin.sym} 100 250 1 0 {name=p4 lab=vss}
C {iopin.sym} 60 210 2 0 {name=p5 lab=cbar}
C {iopin.sym} 60 -40 2 0 {name=p6 lab=c}
C {lab_wire.sym} 100 240 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 100 210 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 100 130 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 100 -80 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 100 -40 2 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 100 40 2 0 {name=p12 sig_type=std_logic lab=vdd}
