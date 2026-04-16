v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -640 -297.5 -640 -267.5 {lab=vss}
N -640 -207.5 -640 -190 {lab=GND}
N -640 -190 -640 -187.5 {lab=GND}
N -640 -210 -640 -207.5 {lab=GND}
N -640 -267.5 -640 -265 {lab=vss}
N -1187.5 -210 -1187.5 -195 {lab=GND}
N -1187.5 -302.5 -1187.5 -270 {lab=vdd}
N -1187.5 -270 -1187.5 -267.5 {lab=vdd}
N -1187.5 -212.5 -1187.5 -210 {lab=GND}
N -1112.5 -210 -1112.5 -195 {lab=GND}
N -1112.5 -270 -1112.5 -267.5 {lab=IN0}
N -1112.5 -212.5 -1112.5 -210 {lab=GND}
N -820 -377.5 -820 -362.5 {lab=GND}
N -820 -362.5 -820 -360 {lab=GND}
N -820 -302.5 -820 -287.5 {lab=cbar}
N -737.5 -180 -737.5 -172.5 {lab=GND}
N -737.5 -182.5 -737.5 -180 {lab=GND}
N -737.5 -172.5 -737.5 -170 {lab=GND}
N -770 -240 -737.5 -240 {lab=OUT}
N -1115 -267.5 -1005 -267.5 {lab=IN0}
N -820 -292.5 -810 -292.5 {lab=cbar}
N -792.5 -125 -792.5 -110 {lab=GND}
N -792.5 -127.5 -792.5 -125 {lab=GND}
N -812.5 -185 -792.5 -185 {lab=c}
N -822.5 -185 -812.5 -185 {lab=c}
N -707.5 -180 -707.5 -172.5 {lab=GND}
N -707.5 -172.5 -707.5 -170 {lab=GND}
N -737.5 -240 -707.5 -240 {lab=OUT}
N -820 -295 -820 -265 {lab=cbar}
N -1005 -267.5 -870 -240 {lab=IN0}
N -820 -220 -820 -185 {lab=c}
C {vsource.sym} -640 -237.5 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -640 -190 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -640 -297.5 3 0 {name=p3 sig_type=std_logic lab=vss}
C {vsource.sym} -1187.5 -240 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -1187.5 -197.5 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -1187.5 -302.5 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} -1112.5 -237.5 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -1112.5 -195 0 0 {name=l3 lab=GND}
C {vsource.sym} -820 -332.5 2 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} -820 -377.5 2 0 {name=l5 lab=GND}
C {lab_wire.sym} -790 -280 2 0 {name=p2 sig_type=std_logic lab=vss}
C {capa.sym} -737.5 -210 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -737.5 -172.5 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -1147.5 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -537.5 -567.5 0 0 {name=s1 only_toplevel=false value="
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
C {lab_wire.sym} -742.5 -240 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -1060 -267.5 0 0 {name=p4 sig_type=std_logic lab=IN0}
C {lab_wire.sym} -850 -200 3 0 {name=p7 sig_type=std_logic lab=vdd}
C {vsource.sym} -792.5 -155 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -792.5 -110 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -810 -185 0 0 {name=p5 sig_type=std_logic lab=c}
C {lab_wire.sym} -820 -290 2 0 {name=p6 sig_type=std_logic lab=cbar}
C {gnd.sym} -707.5 -172.5 0 0 {name=l7 lab=GND}
C {res.sym} -707.5 -210 0 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1}
C {CAD2/TG.sym} -820 -240 0 0 {name=x1}
