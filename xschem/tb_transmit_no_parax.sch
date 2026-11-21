v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -510 860 -110 {flags=graph
y1=-1.21107
y2=4.29273
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.28667e-07
x2=1.17928e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
b0
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
t6
dac_ideal"
color="4 10 7 6 8 10 11 12 13 14 15 16 4 13"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=13}
C {vsource.sym} 360 -600 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 360 -570 0 1 {name=l1 lab=GND}
C {ipin.sym} 130 -1000 0 0 {name=p1 lab=in}
C {ipin.sym} 130 -710 0 0 {name=p2 lab=enable}
C {ipin.sym} 130 -690 0 0 {name=p3 lab=clk}
C {ipin.sym} 130 -670 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_transmit_no_parax.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 1us
    write tb_transmit_no_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -490 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {tt_um_transmit_5_3_no_parax.sym} 300 -850 0 0 {name=x2}
C {gnd.sym} 390 -630 0 0 {name=l2 lab=GND}
C {code_shown.sym} 940 -920 0 0 {name=IDEAL_DAC only_toplevel=false value=".model ideal_dac_bridge dac_bridge(out_low=0 out_high=3.3)

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
C {lab_pin.sym} 460 -1000 0 1 {name=p5 sig_type=std_logic lab=b0}
C {lab_pin.sym} 460 -970 0 1 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 460 -940 0 1 {name=p7 sig_type=std_logic lab=b2}
C {lab_pin.sym} 460 -910 0 1 {name=p8 sig_type=std_logic lab=b3}
C {lab_pin.sym} 460 -880 0 1 {name=p9 sig_type=std_logic lab=b4}
C {lab_pin.sym} 460 -850 0 1 {name=p10 sig_type=std_logic lab=t0}
C {lab_pin.sym} 460 -820 0 1 {name=p11 sig_type=std_logic lab=t1}
C {lab_pin.sym} 460 -790 0 1 {name=p12 sig_type=std_logic lab=t2}
C {lab_pin.sym} 460 -760 0 1 {name=p13 sig_type=std_logic lab=t3}
C {lab_pin.sym} 460 -730 0 1 {name=p14 sig_type=std_logic lab=t4}
C {lab_pin.sym} 460 -700 0 1 {name=p15 sig_type=std_logic lab=t5}
C {lab_pin.sym} 460 -670 0 1 {name=p16 sig_type=std_logic lab=t6}
