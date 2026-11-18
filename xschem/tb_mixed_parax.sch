v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -520 860 -120 {flags=graph
y1=-0.985814
y2=3.58812
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.20466e-07
x2=1.3511e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
in
net1
net2
net3
net4
net5
net6
net7
net8
net9
net10"
color="4 10 7 6 8 9 11 12 13 14 6 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
C {tt_um_transmit_5_3_parax.sym} 340 -850 0 0 {name=x1}
C {dac_5_3_parax.sym} 670 -850 0 0 {name=x2}
C {vsource.sym} 400 -600 0 1 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 400 -570 0 0 {name=l1 lab=GND}
C {gnd.sym} 430 -630 0 0 {name=l2 lab=GND}
C {ipin.sym} 170 -1000 0 0 {name=p1 lab=in}
C {ipin.sym} 170 -710 0 0 {name=p2 lab=enable}
C {ipin.sym} 170 -690 0 0 {name=p3 lab=clk}
C {ipin.sym} 170 -670 0 0 {name=p4 lab=rst_n}
C {gnd.sym} 760 -630 0 0 {name=l3 lab=GND}
C {opin.sym} 830 -1000 0 0 {name=p5 lab=out}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_dac.raw tran"
}
C {code_shown.sym} 940 -390 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 1us
    write tb_miaxed_parax.raw
.endc
"}
C {code_shown.sym} 940 -230 0 0 {name=STIMULI only_toplevel=false value=".include /home/j542yu/Documents/ece298a-msk-modem/xschem/simulation/mixed/modulator_5_3_stimuli.spice"}
C {code_shown.sym} 940 -490 0 0 {name=CORNER only_toplevel=false value=".include /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /usr/local/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
