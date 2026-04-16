v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 -250 -20 -250 {lab=#net1}
N -250 -230 -20 -230 {lab=#net2}
N -250 -210 -20 -210 {lab=#net3}
N -250 -190 -20 -190 {lab=#net4}
N -250 -170 -20 -170 {lab=#net5}
N -250 -150 -20 -150 {lab=#net6}
N -250 -130 -20 -130 {lab=#net7}
N -250 -110 -20 -110 {lab=#net8}
N -250 -90 -20 -90 {lab=#net9}
N -250 -70 -20 -70 {lab=#net10}
N -250 -50 -20 -50 {lab=#net11}
N -250 -30 -20 -30 {lab=#net12}
N -250 -10 -20 -10 {lab=#net13}
N -250 10 -20 10 {lab=#net14}
N -250 30 -20 30 {lab=#net15}
N -250 50 -20 50 {lab=#net16}
N 280 -250 537.5 -250 {lab=#net17}
N 537.5 -250 540 -250 {lab=#net17}
C {schematics/PC/pc.sym} 130 40 0 0 {name=x1}
C {schematics/16bit-2-1mux/16bit21.sym} -400 -60 0 0 {name=x2}
C {schematics/add/quick_adder.sym} 690 60 0 0 {name=x3}
C {schematics/16bit-2-1mux/16bit21.sym} 130 900 0 0 {name=x4}
C {vdd.sym} -20 600 0 0 {name=l2 lab=vdd}
C {gnd.sym} -20 640 1 0 {name=l1 lab=GND}
C {gnd.sym} -20 680 1 0 {name=l3 lab=GND}
C {gnd.sym} -20 720 1 0 {name=l4 lab=GND}
C {gnd.sym} -20 760 1 0 {name=l5 lab=GND}
C {gnd.sym} -20 800 1 0 {name=l6 lab=GND}
C {gnd.sym} -20 840 1 0 {name=l7 lab=GND}
C {gnd.sym} -20 880 1 0 {name=l8 lab=GND}
C {gnd.sym} -20 920 1 0 {name=l9 lab=GND}
C {gnd.sym} -20 960 1 0 {name=l10 lab=GND}
C {gnd.sym} -20 1000 1 0 {name=l11 lab=GND}
C {gnd.sym} -20 1040 1 0 {name=l12 lab=GND}
C {gnd.sym} -20 1080 1 0 {name=l13 lab=GND}
C {gnd.sym} -20 1120 1 0 {name=l14 lab=GND}
C {gnd.sym} -20 1160 1 0 {name=l15 lab=GND}
C {gnd.sym} -20 1200 1 0 {name=l16 lab=GND}
C {vdd.sym} 190 -320 0 0 {name=l17 lab=vdd}
C {gnd.sym} 115 400 0 0 {name=l18 lab=GND}
C {lab_wire.sym} 280 710 0 1 {name=p3 lab=Y0}
C {lab_wire.sym} 280 730 0 1 {name=p1 lab=Y1}
C {lab_wire.sym} 280 750 0 1 {name=p2 lab=Y2}
C {lab_wire.sym} 280 770 0 1 {name=p4 lab=Y3}
C {lab_wire.sym} 280 790 0 1 {name=p5 lab=Y4}
C {lab_wire.sym} 280 810 0 1 {name=p6 lab=Y5}
C {lab_wire.sym} 280 830 0 1 {name=p7 lab=Y6}
C {lab_wire.sym} 280 850 0 1 {name=p8 lab=Y7}
C {lab_wire.sym} 280 870 0 1 {name=p9 lab=Y8}
C {lab_wire.sym} 280 890 0 1 {name=p10 lab=Y9}
C {lab_wire.sym} 280 910 0 1 {name=p11 lab=Y10}
C {lab_wire.sym} 280 930 0 1 {name=p12 lab=Y11}
C {lab_wire.sym} 280 950 0 1 {name=p13 lab=Y12}
C {lab_wire.sym} 280 970 0 1 {name=p14 lab=Y13}
C {lab_wire.sym} 280 990 0 1 {name=p15 lab=Y14}
C {lab_wire.sym} 280 1010 0 1 {name=p16 lab=Y15}
C {lab_wire.sym} 540 -170 2 1 {name=p17 lab=Y4}
C {lab_wire.sym} 540 -150 2 1 {name=p18 lab=Y0}
C {lab_wire.sym} 540 -130 2 1 {name=p19 lab=Y12}
C {lab_wire.sym} 540 -110 2 1 {name=p20 lab=Y8}
C {lab_wire.sym} 540 -10 2 1 {name=p21 lab=Y5}
C {lab_wire.sym} 540 10 2 1 {name=p22 lab=Y1}
C {lab_wire.sym} 540 30 2 1 {name=p23 lab=Y13}
C {lab_wire.sym} 540 50 2 1 {name=p24 lab=Y9}
C {lab_wire.sym} 540 150 2 1 {name=p25 lab=Y14}
C {lab_wire.sym} 540 170 2 1 {name=p26 lab=Y6}
C {lab_wire.sym} 540 190 2 1 {name=p27 lab=Y2}
C {lab_wire.sym} 540 210 2 1 {name=p28 lab=Y10}
C {lab_wire.sym} 540 310 2 1 {name=p29 lab=Y7}
C {lab_wire.sym} 540 330 2 1 {name=p30 lab=Y15}
C {lab_wire.sym} 540 350 2 1 {name=p31 lab=Y3}
C {lab_wire.sym} 540 370 2 1 {name=p32 lab=Y11}
C {ipin.sym} -400 -360 1 0 {name=p33 lab=J}
C {ipin.sym} 130 600 1 0 {name=p34 lab=Br}
C {ipin.sym} -20 620 0 0 {name=p35 lab=D0}
C {ipin.sym} -20 660 0 0 {name=p36 lab=D1}
C {ipin.sym} -20 700 0 0 {name=p37 lab=D2}
C {ipin.sym} -20 740 0 0 {name=p38 lab=D3}
C {ipin.sym} -20 780 0 0 {name=p39 lab=D4}
C {ipin.sym} -20 820 0 0 {name=p40 lab=D5}
C {ipin.sym} -20 860 0 0 {name=p41 lab=D6}
C {ipin.sym} -20 900 0 0 {name=p42 lab=D7}
C {lab_wire.sym} -20 940 2 1 {name=p43 lab=D7}
C {lab_wire.sym} -20 980 2 1 {name=p44 lab=D7}
C {lab_wire.sym} -20 1020 2 1 {name=p45 lab=D7}
C {lab_wire.sym} -20 1060 2 1 {name=p46 lab=D7}
C {lab_wire.sym} -20 1100 2 1 {name=p47 lab=D7}
C {lab_wire.sym} -20 1140 2 1 {name=p48 lab=D7}
C {lab_wire.sym} -20 1180 2 1 {name=p49 lab=D7}
C {lab_wire.sym} -20 1220 2 1 {name=p50 lab=D7}
C {ipin.sym} 192.5 400 3 0 {name=p51 lab=RSTn}
C {opin.sym} 840 -250 0 1 {name=p52 lab=O4}
C {opin.sym} 840 -230 0 1 {name=p53 lab=O8}
C {opin.sym} 840 -210 0 1 {name=p54 lab=O12}
C {opin.sym} 840 -190 0 1 {name=p55 lab=O0}
C {opin.sym} 840 -170 0 1 {name=p56 lab=O5}
C {opin.sym} 840 -150 0 1 {name=p57 lab=O9}
C {opin.sym} 840 -130 0 1 {name=p58 lab=O1}
C {opin.sym} 840 -110 0 1 {name=p59 lab=O13}
C {opin.sym} 840 -90 0 1 {name=p60 lab=O10}
C {opin.sym} 840 -70 0 1 {name=p61 lab=O2}
C {opin.sym} 840 -50 0 1 {name=p62 lab=O14}
C {opin.sym} 840 -30 0 1 {name=p63 lab=O6}
C {opin.sym} 840 -10 0 1 {name=p64 lab=O11}
C {opin.sym} 840 10 0 1 {name=p65 lab=O15}
C {opin.sym} 840 30 0 1 {name=p66 lab=O7}
C {opin.sym} 840 50 0 1 {name=p67 lab=O3}
C {ipin.sym} 92.5 -320 1 0 {name=p68 lab=CLK}
C {lab_wire.sym} -550 -360 2 1 {name=p69 lab=O0}
C {ipin.sym} -550 -340 2 0 {name=p70 lab=R0}
C {lab_wire.sym} -550 -320 2 1 {name=p71 lab=O1}
C {ipin.sym} -550 -300 2 0 {name=p72 lab=R1}
C {lab_wire.sym} -550 -280 2 1 {name=p73 lab=O2}
C {ipin.sym} -550 -260 2 0 {name=p74 lab=R2}
C {lab_wire.sym} -550 -240 2 1 {name=p75 lab=O3}
C {ipin.sym} -550 -220 2 0 {name=p76 lab=R3}
C {lab_wire.sym} -550 -200 2 1 {name=p77 lab=O4}
C {ipin.sym} -550 -180 2 0 {name=p78 lab=R4}
C {lab_wire.sym} -550 -160 2 1 {name=p79 lab=O5}
C {ipin.sym} -550 -140 2 0 {name=p80 lab=R5}
C {lab_wire.sym} -550 -120 2 1 {name=p81 lab=O6}
C {ipin.sym} -550 -100 2 0 {name=p82 lab=R6}
C {lab_wire.sym} -550 -80 2 1 {name=p83 lab=O7}
C {ipin.sym} -550 -60 2 0 {name=p84 lab=R7}
C {lab_wire.sym} -550 -40 2 1 {name=p85 lab=O8}
C {ipin.sym} -550 -20 2 0 {name=p86 lab=R8}
C {lab_wire.sym} -550 0 2 1 {name=p87 lab=O9}
C {ipin.sym} -550 20 2 0 {name=p88 lab=R9}
C {lab_wire.sym} -550 40 2 1 {name=p89 lab=O10}
C {ipin.sym} -550 60 2 0 {name=p90 lab=R10}
C {lab_wire.sym} -550 80 2 1 {name=p91 lab=O11}
C {ipin.sym} -550 100 2 0 {name=p92 lab=R11}
C {lab_wire.sym} -550 120 2 1 {name=p93 lab=O12}
C {ipin.sym} -550 140 2 0 {name=p94 lab=R12}
C {lab_wire.sym} -550 160 2 1 {name=p95 lab=O13}
C {ipin.sym} -550 180 2 0 {name=p96 lab=R13}
C {lab_wire.sym} -550 200 2 1 {name=p97 lab=O14}
C {ipin.sym} -550 220 2 0 {name=p98 lab=R14}
C {lab_wire.sym} -550 240 2 1 {name=p99 lab=O15}
C {ipin.sym} -550 260 2 0 {name=p100 lab=R15}
C {lab_wire.sym} 280 -210 0 1 {name=p101 lab=Q1}
C {lab_wire.sym} 280 -170 0 1 {name=p102 lab=Q2}
C {lab_wire.sym} 280 -130 0 1 {name=p103 lab=Q3}
C {lab_wire.sym} 280 -90 0 1 {name=p104 lab=Q4}
C {lab_wire.sym} 280 -50 0 1 {name=p105 lab=Q5}
C {lab_wire.sym} 280 -10 0 1 {name=p106 lab=Q6}
C {lab_wire.sym} 280 30 0 1 {name=p107 lab=Q7}
C {lab_wire.sym} 280 70 0 1 {name=p108 lab=Q8}
C {lab_wire.sym} 280 110 0 1 {name=p109 lab=Q9}
C {lab_wire.sym} 280 150 0 1 {name=p110 lab=Q10}
C {lab_wire.sym} 280 190 0 1 {name=p111 lab=Q11}
C {lab_wire.sym} 280 230 0 1 {name=p112 lab=Q12}
C {lab_wire.sym} 280 270 0 1 {name=p113 lab=Q13}
C {lab_wire.sym} 280 310 0 1 {name=p114 lab=Q14}
C {lab_wire.sym} 280 350 0 1 {name=p115 lab=Q15}
C {lab_wire.sym} 540 -90 2 1 {name=p116 lab=Q1}
C {lab_wire.sym} 540 110 2 1 {name=p117 lab=Q2}
C {lab_wire.sym} 540 270 2 1 {name=p118 lab=Q3}
C {lab_wire.sym} 540 -230 2 1 {name=p119 lab=Q4}
C {lab_wire.sym} 540 -50 2 1 {name=p120 lab=Q5}
C {lab_wire.sym} 540 90 2 1 {name=p121 lab=Q6}
C {lab_wire.sym} 540 230 2 1 {name=p122 lab=Q7}
C {lab_wire.sym} 540 -190 2 1 {name=p123 lab=Q8}
C {lab_wire.sym} 540 -30 2 1 {name=p124 lab=Q9}
C {lab_wire.sym} 540 130 2 1 {name=p125 lab=Q10}
C {lab_wire.sym} 540 290 2 1 {name=p126 lab=Q11}
C {lab_wire.sym} 540 -210 2 1 {name=p127 lab=Q12}
C {lab_wire.sym} 540 -70 2 1 {name=p128 lab=Q13}
C {lab_wire.sym} 540 250 2 1 {name=p129 lab=Q15}
C {lab_wire.sym} 540 70 2 1 {name=p130 lab=Q14}
