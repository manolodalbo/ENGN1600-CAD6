v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 175 -70 175 -40 {lab=vss}
N 175 20 175 37.5 {lab=GND}
N 175 37.5 175 40 {lab=GND}
N 175 17.5 175 20 {lab=GND}
N 175 -40 175 -37.5 {lab=vss}
N -172.5 27.5 -172.5 42.5 {lab=GND}
N -172.5 -65 -172.5 -32.5 {lab=vdd}
N -172.5 -32.5 -172.5 -30 {lab=vdd}
N -172.5 25 -172.5 27.5 {lab=GND}
N -97.5 27.5 -97.5 42.5 {lab=GND}
N -97.5 25 -97.5 27.5 {lab=GND}
N -27.5 40 -27.5 55 {lab=GND}
N -27.5 37.5 -27.5 40 {lab=GND}
N 40 100 40 115 {lab=GND}
N 40 97.5 40 100 {lab=GND}
N 40 25 40 40 {lab=RSTn}
N 112.5 50 112.5 57.5 {lab=GND}
N 112.5 47.5 112.5 50 {lab=GND}
N 112.5 57.5 112.5 60 {lab=GND}
N -25 -20 -10 -20 {lab=CLK}
N -30 -20 -25 -20 {lab=CLK}
N -97.5 -60 -97.5 -30 {lab=D}
N -97.5 -60 -10 -60 {lab=D}
N 90 -40 112.5 -40 {lab=Q}
N 112.5 -40 112.5 -10 {lab=Q}
N 40 25 40 45 {lab=RSTn}
N 40 10 40 47.5 {lab=RSTn}
N 200 200 200 207.5 {lab=GND}
N 200 197.5 200 200 {lab=GND}
N 200 207.5 200 210 {lab=GND}
N 177.5 110 200 110 {lab=Qd}
N 200 110 200 140 {lab=Qd}
N 90 -45 90 -40 {lab=Q}
N -10 -60 -10 -40 {lab=D}
C {vsource.sym} 175 -10 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 175 37.5 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 175 -70 3 0 {name=p3 sig_type=std_logic lab=vss}
C {vsource.sym} -172.5 -2.5 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -172.5 40 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -172.5 -65 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} -97.5 0 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -97.5 42.5 0 0 {name=l3 lab=GND}
C {vsource.sym} -27.5 10 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -27.5 55 0 0 {name=l4 lab=GND}
C {vsource.sym} 40 75 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 40 115 0 0 {name=l5 lab=GND}
C {capa.sym} 112.5 20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 112.5 57.5 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -342.5 197.5 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 347.5 -340 0 0 {name=s1 only_toplevel=false value="
.control
save all

** Define input signals
let fsig = 1e8
let tper = 1/fsig
let tfr = 0.001*tper
let ton = 0.5*tper-2*tfr
** Define transient params
** 2. Derived Test Variables
** DATA: Toggles at half the speed of CLK (0.5MHz)
** We add a 10% offset (0.1*tper) so D isn't changing exactly on the clock edge
let t_d_delay  = 0.5 * tper
let t_d_per    = 2 * tper
let t_d_width  = 1 * tper

** RESET: Fires 2.5 cycles in (mid-clock pulse) to test Asynchronicity
let t_rst_delay = 2.25 * tper
let t_rst_width = 0.5 * tper
let t_rst_per   = 5 * tper

** Simulation Window
let tstop = 8 * tper
let tstep = tper / 1000

** 3. Apply to Sources
** V4: Clock (Standard Pulse)
alter @v4[pulse] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper ]

** V3: Data (Toggles slower than CLK)
alter @v3[pulse] = [ 0 3.3 $&t_d_delay $&tfr $&tfr $&t_d_width $&t_d_per ]

** V5: Reset (Active Low - starts at 3.3V, drops to 0V)
alter @v5[pulse] = [ 3.3 0 $&t_rst_delay $&tfr $&tfr $&t_rst_width $&t_rst_per ]
** Simulations
op
tran $&tstep $&tstop
meas tran clk_q_fall TRIG v(CLK) VAL=1.65 RISE=1 TARG v(Q) VAL=1.65 FALL=1 FROM=15n TO=25n
meas tran clk_q_rise TRIG v(CLK) VAL=1.65 RISE=1 TARG v(Q) VAL=1.65 RISE=1 FROM=25n TO=35n

** Save waverform
write dff_tb.raw
.endc

"}
C {lab_wire.sym} 107.5 -40 0 0 {name=p4 sig_type=std_logic lab=Q}
C {lab_wire.sym} -52.5 -60 0 0 {name=p5 sig_type=std_logic lab=D}
C {lab_wire.sym} -17.5 -20 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 40 45 0 0 {name=p9 sig_type=std_logic lab=RSTn}
C {capa.sym} 200 170 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 207.5 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 195 110 0 0 {name=p2 sig_type=std_logic lab=Qd}
C {lab_wire.sym} 50 -100 2 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 30 -100 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 90 -25 0 0 {name=p10 sig_type=std_logic lab=Qd}
C {CAD2/DFF/DFF.sym} 10 10 0 0 {name=x1}
