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
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_stimuli_only.raw tran"
}
C {code_shown.sym} 940 -440 0 0 {name=SIM only_toplevel=false value=".option wnflag=1

.control
    tran 10n 500ns
    write tb_stimuli_only.raw
.endc
"}
C {code_shown.sym} 940 -270 0 0 {name=STIMULI only_toplevel=false value=".include ./stimuli/modulator_5_3_stimuli.spice"}
C {devices/code_shown.sym} 920 -660 0 0 {name=MODELS only_toplevel=true
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
