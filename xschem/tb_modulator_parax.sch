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
x1=6.64823e-08
x2=7.39036e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
color="4 5 6 7 8 9 10 11 12 13 14 15 16"
node="data_in
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
t6"}
B 2 60 -990 860 -590 {flags=graph
y1=-1.25608
y2=4.43976
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.64823e-08
x2=7.39036e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0

color=12
node=dac_ideal}
C {tt_um_modulator_parax.sym} 300 -1290 0 0 {name=x1}
C {vsource.sym} 360 -1040 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 360 -1010 0 1 {name=l1 lab=GND}
C {ipin.sym} 130 -1440 0 0 {name=p1 lab=data_in}
C {ipin.sym} 130 -1150 0 0 {name=p2 lab=enable}
C {ipin.sym} 130 -1130 0 0 {name=p3 lab=clk}
C {ipin.sym} 130 -1110 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_modulator_parax.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 850ns
    write tb_modulator_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {gnd.sym} 390 -1070 0 0 {name=l2 lab=GND}
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
C {lab_pin.sym} 460 -1440 0 1 {name=p5 sig_type=std_logic lab=b0}
C {lab_pin.sym} 460 -1410 0 1 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 460 -1380 0 1 {name=p7 sig_type=std_logic lab=b2}
C {lab_pin.sym} 460 -1350 0 1 {name=p8 sig_type=std_logic lab=b3}
C {lab_pin.sym} 460 -1320 0 1 {name=p9 sig_type=std_logic lab=b4}
C {lab_pin.sym} 460 -1290 0 1 {name=p10 sig_type=std_logic lab=t0}
C {lab_pin.sym} 460 -1260 0 1 {name=p11 sig_type=std_logic lab=t1}
C {lab_pin.sym} 460 -1230 0 1 {name=p12 sig_type=std_logic lab=t2}
C {lab_pin.sym} 460 -1200 0 1 {name=p13 sig_type=std_logic lab=t3}
C {lab_pin.sym} 460 -1170 0 1 {name=p14 sig_type=std_logic lab=t4}
C {lab_pin.sym} 460 -1140 0 1 {name=p15 sig_type=std_logic lab=t5}
C {lab_pin.sym} 460 -1110 0 1 {name=p16 sig_type=std_logic lab=t6}
C {devices/code_shown.sym} 1480 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
