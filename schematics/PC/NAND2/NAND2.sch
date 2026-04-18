v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -20 60 -20 {lab=WK}
N 50 -50 60 -50 {lab=vss}
N 50 60 60 60 {lab=vss}
N 60 30 60 60 {lab=vss}
N 50 30 60 30 {lab=vss}
N 50 -20 50 -0 {lab=WK}
N -10 -120 -0 -120 {lab=OUT}
N -10 -150 -0 -150 {lab=vdd}
N 80 -120 90 -120 {lab=OUT}
N 80 -150 90 -150 {lab=vdd}
N -10 -120 -10 -100 {lab=OUT}
N -10 -100 50 -100 {lab=OUT}
N 50 -100 50 -80 {lab=OUT}
N 50 -100 50 -80 {lab=OUT}
N 50 -100 140 -100 {lab=OUT}
N 80 -120 80 -100 {lab=OUT}
N -10 -200 -10 -180 {lab=vdd}
N 80 -200 80 -180 {lab=vdd}
N 50 60 50 80 {lab=vss}
N -100 -80 -40 -80 {lab=IN0}
N -40 -80 -40 -50 {lab=IN0}
N -40 -50 10 -50 {lab=IN0}
N -100 -150 -100 -80 {lab=IN0}
N -100 -20 -100 30 {lab=IN1}
N -100 30 10 30 {lab=IN1}
N -100 -50 -100 -20 {lab=IN1}
N -170 -50 -100 -50 {lab=IN1}
N -170 -260 -170 -50 {lab=IN1}
N 40 -260 40 -150 {lab=IN0}
N -10 -190 -0 -190 {lab=vdd}
N -0 -190 0 -150 {lab=vdd}
N 80 -190 90 -190 {lab=vdd}
N 90 -190 90 -150 {lab=vdd}
N -60 -150 -50 -150 {lab=IN1}
N 60 -50 70 -50 {lab=vss}
C {symbols/nfet_03v3.sym} 30 30 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 30 -50 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -30 -150 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 60 -150 0 0 {name=M4
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
C {iopin.sym} -10 -200 3 0 {name=p1 lab=vdd}
C {iopin.sym} 50 80 1 0 {name=p3 lab=vss}
C {opin.sym} 140 -100 0 0 {name=p4 lab=OUT}
C {ipin.sym} -100 -80 0 0 {name=p5 lab=IN0}
C {ipin.sym} -100 -20 0 0 {name=p6 lab=IN1}
C {lab_wire.sym} 80 -200 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -60 -150 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {lab_wire.sym} -40 30 0 0 {name=p8 sig_type=std_logic lab=IN1}
C {lab_wire.sym} -60 -80 0 0 {name=p9 sig_type=std_logic lab=IN0}
C {lab_wire.sym} 40 -240 0 0 {name=p10 sig_type=std_logic lab=IN0}
C {lab_wire.sym} 50 -10 0 0 {name=p11 sig_type=std_logic lab=WK}
C {lab_wire.sym} -30 -150 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 70 -50 0 0 {name=p13 sig_type=std_logic lab=vss}
