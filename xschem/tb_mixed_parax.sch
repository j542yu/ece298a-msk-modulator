v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -530 870 -130 {flags=graph
y1=0.317763
y2=5.82156
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.28183e-07
x2=8.88102e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b0
b1
b2
b3
b4
t0
t1
t2
t3
t4
t5
t6"
color="4 10 7 6 8 10 11 12 13 14 15 16"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 60 -970 860 -570 {flags=graph
y1=-0.528375
y2=3.61882
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.28183e-07
x2=8.88102e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
dac_ideal_out
dac_parax_out"
color="3 10 13"
dataset=-1
unitx=1
logx=0
logy=0
}
C {tt_um_transmit_5_3_parax.sym} 310 -1450 0 0 {name=x1}
C {vsource.sym} 370 -1200 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 370 -1170 0 1 {name=l1 lab=GND}
C {ipin.sym} 140 -1600 0 0 {name=p1 lab=in}
C {ipin.sym} 140 -1310 0 0 {name=p2 lab=enable}
C {ipin.sym} 140 -1290 0 0 {name=p3 lab=clk}
C {ipin.sym} 140 -1270 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_mixed_parax.raw tran"
}
C {code_shown.sym} 940 -440 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 5n 850ns
    write tb_mixed_parax.raw
.endc
"}
C {code_shown.sym} 940 -180 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -540 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {gnd.sym} 400 -1230 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 470 -1600 0 1 {name=p5 sig_type=std_logic lab=b0}
C {lab_pin.sym} 470 -1570 0 1 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 470 -1540 0 1 {name=p7 sig_type=std_logic lab=b2}
C {lab_pin.sym} 470 -1510 0 1 {name=p8 sig_type=std_logic lab=b3}
C {lab_pin.sym} 470 -1480 0 1 {name=p9 sig_type=std_logic lab=b4}
C {lab_pin.sym} 470 -1450 0 1 {name=p10 sig_type=std_logic lab=t0}
C {lab_pin.sym} 470 -1420 0 1 {name=p11 sig_type=std_logic lab=t1}
C {lab_pin.sym} 470 -1390 0 1 {name=p12 sig_type=std_logic lab=t2}
C {lab_pin.sym} 470 -1360 0 1 {name=p13 sig_type=std_logic lab=t3}
C {lab_pin.sym} 470 -1330 0 1 {name=p14 sig_type=std_logic lab=t4}
C {lab_pin.sym} 470 -1300 0 1 {name=p15 sig_type=std_logic lab=t5}
C {lab_pin.sym} 470 -1270 0 1 {name=p16 sig_type=std_logic lab=t6}
C {dac_5_3_parax.sym} 720 -1450 0 0 {name=x2}
C {lab_pin.sym} 550 -1600 0 0 {name=p17 sig_type=std_logic lab=b0}
C {lab_pin.sym} 550 -1570 0 0 {name=p18 sig_type=std_logic lab=b1}
C {lab_pin.sym} 550 -1540 0 0 {name=p19 sig_type=std_logic lab=b2}
C {lab_pin.sym} 550 -1510 0 0 {name=p20 sig_type=std_logic lab=b3}
C {lab_pin.sym} 550 -1480 0 0 {name=p21 sig_type=std_logic lab=b4}
C {lab_pin.sym} 550 -1450 0 0 {name=p22 sig_type=std_logic lab=t0}
C {lab_pin.sym} 550 -1420 0 0 {name=p23 sig_type=std_logic lab=t1}
C {lab_pin.sym} 550 -1390 0 0 {name=p24 sig_type=std_logic lab=t2}
C {lab_pin.sym} 550 -1360 0 0 {name=p25 sig_type=std_logic lab=t3}
C {lab_pin.sym} 550 -1330 0 0 {name=p26 sig_type=std_logic lab=t4}
C {lab_pin.sym} 550 -1300 0 0 {name=p27 sig_type=std_logic lab=t5}
C {lab_pin.sym} 550 -1270 0 0 {name=p28 sig_type=std_logic lab=t6}
C {gnd.sym} 810 -1230 0 0 {name=l3 lab=GND}
C {opin.sym} 880 -1600 0 0 {name=p29 lab=dac_parax_out}
C {code_shown.sym} 940 -270 0 0 {name=IDEAL only_toplevel=false value="Bideal dac_ideal_out 0 V = (32*(V(t0)+V(t1)+V(t2)+V(t3)+V(t4)+V(t5)+V(t6)) +
+ V(b0)+2*V(b1)+4*V(b2)+8*V(b3)+16*V(b4))/256"}
