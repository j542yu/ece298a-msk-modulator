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
N 500 -1040 500 -900 {bus=true
lab=B[4:0]}
N 460 -1010 490 -1010 {
lab=B[0]}
N 460 -980 490 -980 {
lab=B[1]}
N 460 -950 490 -950 {
lab=B[2]}
N 460 -920 490 -920 {
lab=B[3]}
N 460 -890 490 -890 {
lab=B[4]}
N 560 -850 560 -650 {bus=true
lab=T[6:0]}
N 470 -860 550 -860 {
lab=T[0]}
N 470 -830 550 -830 {
lab=T[1]}
N 470 -800 550 -800 {
lab=T[2]}
N 470 -770 550 -770 {
lab=T[3]}
N 470 -740 550 -740 {
lab=T[4]}
N 470 -710 550 -710 {
lab=T[5]}
N 470 -680 550 -680 {
lab=T[6]}
C {tt_um_transmit_5_3_parax.sym} 310 -860 0 0 {name=x1}
C {vsource.sym} 370 -610 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 370 -580 0 1 {name=l1 lab=GND}
C {ipin.sym} 140 -1010 0 0 {name=p1 lab=in}
C {ipin.sym} 140 -720 0 0 {name=p2 lab=enable}
C {ipin.sym} 140 -700 0 0 {name=p3 lab=clk}
C {ipin.sym} 140 -680 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tt_um_transmit_5_3_parax.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 1us
    write tt_um_transmit_5_3_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -490 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {lab_pin.sym} 500 -1040 0 1 {lab=B[4:0]}
C {bus_tap.sym} 500 -1020 3 1 {name=l4 lab=[0]}
C {bus_tap.sym} 500 -990 3 1 {name=l5 lab=[1]}
C {bus_tap.sym} 500 -960 3 1 {name=l6 lab=[2]}
C {bus_tap.sym} 500 -930 3 1 {name=l7 lab=[3]}
C {bus_tap.sym} 500 -900 3 1 {name=l8 lab=[4]}
C {lab_pin.sym} 560 -650 0 1 {name=p5 lab=T[6:0]}
C {bus_tap.sym} 560 -850 0 1 {name=l9 lab=[0]}
C {bus_tap.sym} 560 -820 0 1 {name=l10 lab=[1]}
C {bus_tap.sym} 560 -790 0 1 {name=l11 lab=[2]}
C {bus_tap.sym} 560 -760 0 1 {name=l12 lab=[3]}
C {bus_tap.sym} 560 -730 0 1 {name=l13 lab=[4]}
C {bus_tap.sym} 560 -700 0 1 {name=l14 lab=[5]}
C {bus_tap.sym} 560 -670 0 1 {name=l15 lab=[6]}
C {gnd.sym} 400 -640 0 0 {name=l2 lab=GND}
