v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -520 860 -120 {flags=graph
y1=-1.25608
y2=4.43976
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.31038e-07
x2=3.93898e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
B[0]
B[1]
B[2]
B[3]
B[4]
T[0]
T[1]
T[2]
T[3]
T[4]
T[5]
T[6]"
color="4 10 7 6 8 10 11 12 13 14 15 16 17"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=3}
C {tt_um_transmit_5_3_parax.sym} 310 -860 0 0 {name=x1}
C {vsource.sym} 370 -610 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 370 -580 0 1 {name=l1 lab=GND}
C {ipin.sym} 140 -1010 0 0 {name=p1 lab=in}
C {ipin.sym} 140 -720 0 0 {name=p2 lab=enable}
C {ipin.sym} 140 -700 0 0 {name=p3 lab=clk}
C {ipin.sym} 140 -680 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_transmit_parax_nov_20.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 1us
    write tb_transmit_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -490 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {gnd.sym} 400 -640 0 0 {name=l2 lab=GND}
C {code_shown.sym} 920 -890 0 0 {name=IDEAL_DAC only_toplevel=false value=".model ideal_dac_bridge dac_bridge(out_low=0 out_high=3.3)

a_b0 [b0] [vb0] ideal_dac_bridge
a_b1 [b1] [vb1] ideal_dac_bridge
a_b2 [b2] [vb2] ideal_dac_bridge
a_b3 [b3] [vb3] ideal_dac_bridge
a_b4 [b4] [vb4] ideal_dac_bridge

a_t0 [t0] [vt0] ideal_dac_bridge
a_t1 [t1] [vt1] ideal_dac_bridge
a_t2 [t2] [vt2] ideal_dac_bridge
a_t3 [t3] [vt3] ideal_dac_bridge
a_t4 [t4] [vt4] ideal_dac_bridge
a_t5 [t5] [vt5] ideal_dac_bridge
a_t6 [t6] [vt6] ideal_dac_bridge

Bideal dac_ideal 0 V = (32*(V(vt0)+V(vt1)+V(vt2)+V(vt3)+V(vt4)+V(vt5)+V(vt6)) + V(vb0)+2*V(vb1)+4*V(vb2)+8*V(vb3)+16*V(vb4))/256"}
C {lab_pin.sym} 470 -1010 0 1 {name=p5 sig_type=std_logic lab=b0}
C {lab_pin.sym} 470 -980 0 1 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 470 -950 0 1 {name=p7 sig_type=std_logic lab=b2}
C {lab_pin.sym} 470 -920 0 1 {name=p8 sig_type=std_logic lab=b3}
C {lab_pin.sym} 470 -890 0 1 {name=p9 sig_type=std_logic lab=b4}
C {lab_pin.sym} 470 -860 0 1 {name=p10 sig_type=std_logic lab=t0}
C {lab_pin.sym} 470 -830 0 1 {name=p11 sig_type=std_logic lab=t1}
C {lab_pin.sym} 470 -800 0 1 {name=p12 sig_type=std_logic lab=t2}
C {lab_pin.sym} 470 -770 0 1 {name=p13 sig_type=std_logic lab=t3}
C {lab_pin.sym} 470 -740 0 1 {name=p14 sig_type=std_logic lab=t4}
C {lab_pin.sym} 470 -710 0 1 {name=p15 sig_type=std_logic lab=t5}
C {lab_pin.sym} 470 -680 0 1 {name=p16 sig_type=std_logic lab=t6}
