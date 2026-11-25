v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -530 860 -130 {flags=graph
y1=-1.5108
y2=6.4292
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.78787e-07
x2=1.44467e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="data_in
dac_ideal_out
dac_parax_out
enable"
color="3 10 13 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
N 90 -1490 180 -1490 {
lab=#net1}
N 130 -1430 180 -1430 {
lab=#net1}
N 130 -1490 130 -1430 {
lab=#net1}
N 290 -690 290 -620 {
lab=dac_parax_out}
N 650 -1190 650 -740 {
lab=GND}
N 650 -1430 650 -1190 {
lab=GND}
N 320 -690 510 -690 {
lab=GND}
N 180 -1130 180 -740 {
lab=GND}
C {vsource.sym} 90 -1460 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 90 -1430 0 1 {name=l1 lab=GND}
C {ipin.sym} 180 -1190 0 0 {name=p1 lab=data_in}
C {ipin.sym} 180 -1160 0 0 {name=p2 lab=enable}
C {ipin.sym} 180 -1320 0 0 {name=p3 lab=clk}
C {ipin.sym} 180 -1300 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_mixed_layout_parax.raw tran"
}
C {code_shown.sym} 940 -440 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 500ns
    write tb_mixed_layout_parax.raw
.endc
"}
C {code_shown.sym} 940 -270 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {gnd.sym} 180 -1470 0 1 {name=l2 lab=GND}
C {opin.sym} 290 -620 0 0 {name=p29 lab=dac_parax_out}
C {tt_um_ece298a_msk_modulator_parax.sym} 340 -1160 0 0 {}
C {gnd.sym} 650 -740 0 0 {name=l3 lab=GND}
C {gnd.sym} 510 -690 0 0 {name=l4 lab=GND}
C {gnd.sym} 180 -740 0 1 {name=l5 lab=GND}
C {devices/code_shown.sym} 930 -660 0 0 {name=MODELS only_toplevel=true
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
C {lab_pin.sym} 830 -740 2 0 {name=p5 sig_type=std_logic lab=b0}
C {lab_pin.sym} 830 -770 2 0 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 830 -800 2 0 {name=p7 sig_type=std_logic lab=b2}
C {lab_pin.sym} 830 -830 2 0 {name=p8 sig_type=std_logic lab=b3}
C {lab_pin.sym} 830 -860 2 0 {name=p9 sig_type=std_logic lab=b4}
C {lab_pin.sym} 830 -890 2 0 {name=p10 sig_type=std_logic lab=t0}
C {lab_pin.sym} 830 -920 2 0 {name=p11 sig_type=std_logic lab=t1}
C {lab_pin.sym} 830 -950 2 0 {name=p12 sig_type=std_logic lab=t2}
C {lab_pin.sym} 830 -980 2 0 {name=p13 sig_type=std_logic lab=t3}
C {lab_pin.sym} 830 -1010 2 0 {name=p14 sig_type=std_logic lab=t4}
C {lab_pin.sym} 830 -1040 2 0 {name=p15 sig_type=std_logic lab=t5}
C {lab_pin.sym} 830 -1070 2 0 {name=p16 sig_type=std_logic lab=t6}
