v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -520 860 -120 {flags=graph
y1=-2.5704
y2=5.81228
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.40106e-07
x2=4.02311e-07
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
color="10 7 6 8 10 11 12 13 14 15 16 17 18"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=4}
N 490 -1030 490 -890 {bus=true
lab=B[4:0]}
N 450 -1000 480 -1000 {
lab=B[0]}
N 450 -970 480 -970 {
lab=B[1]}
N 450 -940 480 -940 {
lab=B[2]}
N 450 -910 480 -910 {
lab=B[3]}
N 450 -880 480 -880 {
lab=B[4]}
N 550 -840 550 -640 {bus=true
lab=T[6:0]}
N 460 -850 540 -850 {
lab=T[0]}
N 460 -820 540 -820 {
lab=T[1]}
N 460 -790 540 -790 {
lab=T[2]}
N 460 -760 540 -760 {
lab=T[3]}
N 460 -730 540 -730 {
lab=T[4]}
N 460 -700 540 -700 {
lab=T[5]}
N 460 -670 540 -670 {
lab=T[6]}
C {vsource.sym} 360 -600 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 360 -570 0 1 {name=l1 lab=GND}
C {ipin.sym} 130 -1000 0 0 {name=p1 lab=in}
C {ipin.sym} 130 -710 0 0 {name=p2 lab=enable}
C {ipin.sym} 130 -690 0 0 {name=p3 lab=clk}
C {ipin.sym} 130 -670 0 0 {name=p4 lab=rst_n}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tt_um_transmit_5_3_no_parax.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 1us
    write tt_um_transmit_5_3_no_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -490 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {lab_pin.sym} 490 -1030 0 1 {lab=B[4:0]}
C {bus_tap.sym} 490 -1010 3 1 {name=l4 lab=[0]}
C {bus_tap.sym} 490 -980 3 1 {name=l5 lab=[1]}
C {bus_tap.sym} 490 -950 3 1 {name=l6 lab=[2]}
C {bus_tap.sym} 490 -920 3 1 {name=l7 lab=[3]}
C {bus_tap.sym} 490 -890 3 1 {name=l8 lab=[4]}
C {lab_pin.sym} 550 -640 0 1 {name=p5 lab=T[6:0]}
C {bus_tap.sym} 550 -840 0 1 {name=l9 lab=[0]}
C {bus_tap.sym} 550 -810 0 1 {name=l10 lab=[1]}
C {bus_tap.sym} 550 -780 0 1 {name=l11 lab=[2]}
C {bus_tap.sym} 550 -750 0 1 {name=l12 lab=[3]}
C {bus_tap.sym} 550 -720 0 1 {name=l13 lab=[4]}
C {bus_tap.sym} 550 -690 0 1 {name=l14 lab=[5]}
C {bus_tap.sym} 550 -660 0 1 {name=l15 lab=[6]}
C {ipin.sym} 1810 -1390 0 0 {name=p6 lab=ui_in[2]}
C {ipin.sym} 1810 -1360 0 0 {name=p7 lab=ui_in[3]}
C {ipin.sym} 1810 -1330 0 0 {name=p8 lab=ui_in[4]}
C {ipin.sym} 1810 -1300 0 0 {name=p9 lab=ui_in[5]}
C {ipin.sym} 1810 -1270 0 0 {name=p10 lab=ui_in[6]}
C {ipin.sym} 1810 -1240 0 0 {name=p11 lab=ui_in[7]}
C {ipin.sym} 1810 -1210 0 0 {name=p12 lab=uio_in[0]}
C {ipin.sym} 1810 -1180 0 0 {name=p13 lab=uio_in[1]}
C {ipin.sym} 1810 -1150 0 0 {name=p14 lab=uio_in[2]}
C {ipin.sym} 1810 -1120 0 0 {name=p15 lab=uio_in[3]}
C {ipin.sym} 1810 -1090 0 0 {name=p16 lab=uio_in[4]}
C {ipin.sym} 1810 -1060 0 0 {name=p17 lab=uio_in[5]}
C {ipin.sym} 1810 -1030 0 0 {name=p18 lab=uio_in[6]}
C {ipin.sym} 1810 -1000 0 0 {name=p19 lab=uio_in[7]}
C {ipin.sym} 1620 -1380 0 0 {name=p20 lab=ena}
C {tt_um_transmit_5_3_no_parax.sym} 300 -850 0 0 {name=x2}
C {gnd.sym} 390 -630 0 0 {name=l2 lab=GND}
