v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -75 -100 -75 -70 {lab=vss}
N -75 -10 -75 7.5 {lab=GND}
N -75 7.5 -75 10 {lab=GND}
N -75 -12.5 -75 -10 {lab=GND}
N -75 -70 -75 -67.5 {lab=vss}
N -422.5 -2.5 -422.5 12.5 {lab=GND}
N -422.5 -95 -422.5 -62.5 {lab=vdd}
N -422.5 -62.5 -422.5 -60 {lab=vdd}
N -422.5 -5 -422.5 -2.5 {lab=GND}
N -347.5 -2.5 -347.5 12.5 {lab=GND}
N -347.5 -62.5 -347.5 -60 {lab=IN0}
N -347.5 -5 -347.5 -2.5 {lab=GND}
N -200 60 -200 75 {lab=GND}
N -200 57.5 -200 60 {lab=GND}
N -200 -15 -200 0 {lab=cbar}
N -137.5 20 -137.5 27.5 {lab=GND}
N -137.5 17.5 -137.5 20 {lab=GND}
N -137.5 27.5 -137.5 30 {lab=GND}
N -170 -40 -137.5 -40 {lab=OUT}
N -350 -60 -240 -60 {lab=IN0}
N -240 -60 -240 -40 {lab=IN0}
N -220 -0 -220 10 {lab=vss}
N -220 -90 -220 -80 {lab=vdd}
N -210 -10 -200 -10 {lab=cbar}
N -180 -110 -180 -95 {lab=GND}
N -180 -112.5 -180 -110 {lab=GND}
N -200 -170 -180 -170 {lab=c}
N -210 -170 -200 -170 {lab=c}
N -205 -170 -205 -75 {lab=c}
N -107.5 20 -107.5 27.5 {lab=GND}
N -107.5 27.5 -107.5 30 {lab=GND}
N -137.5 -40 -107.5 -40 {lab=OUT}
C {vsource.sym} -75 -40 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -75 7.5 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -75 -100 3 0 {name=p3 sig_type=std_logic lab=vss}
C {vsource.sym} -422.5 -32.5 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -422.5 10 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -422.5 -95 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} -347.5 -30 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -347.5 12.5 0 0 {name=l3 lab=GND}
C {vsource.sym} -200 30 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} -200 75 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -220 -82.5 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {capa.sym} -137.5 -10 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -137.5 27.5 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -512.5 167.5 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 97.5 -370 0 0 {name=s1 only_toplevel=false value="
.control
save all

** Define input signals
let fsig = 1e6
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tper2 = 2*tper
let ton2 = 0.5*tper2-2*tfr

let tper3 = 4*tper
let ton3 = 0.5*tper3-2*tfr
** Define transient params
let tstop = 2*tper3
let tstep = 0.001 * tper

** Set source
alter @v3[PULSE] = [ 3.3 0 0 $&tfr $&tfr $&ton $&tper 0 ]
alter @v4[PULSE] = [ 3.3 0 0 $&tfr $&tfr $&ton2 $&tper2 0 ]
alter @v5[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton2 $&tper2 0]
** Simulations
op
tran $&tstep $&tstop

** Save waverform
write mux21_tb.raw
.endc

"}
C {lab_wire.sym} -142.5 -40 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -295 -60 0 0 {name=p4 sig_type=std_logic lab=IN0}
C {CAD2/TSI.sym} -220 -20 0 0 {name=x1}
C {lab_wire.sym} -220 7.5 3 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -180 -140 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -180 -95 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -197.5 -170 0 0 {name=p5 sig_type=std_logic lab=c}
C {lab_wire.sym} -200 -7.5 0 0 {name=p6 sig_type=std_logic lab=cbar}
C {gnd.sym} -107.5 27.5 0 0 {name=l7 lab=GND}
C {res.sym} -107.5 -10 0 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1}
