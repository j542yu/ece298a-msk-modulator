v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -620 850 -220 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 340 -1040 450 -1040 {
lab=VOUT}
N 370 -1220 370 -1040 {
lab=VOUT}
N 70 -1220 70 -1080 {
lab=VOUT}
N 70 -1080 120 -1080 {
lab=VOUT}
N 160 -810 160 -790 {
lab=VDD}
N 270 -810 270 -790 {
lab=VDD}
N 270 -730 270 -710 {
lab=IBIAS}
N 70 -1220 370 -1220 {
lab=VOUT}
N 70 -810 70 -790 {
lab=VIN}
C {op_amp.sym} 210 -1040 0 0 {name=x1}
C {gnd.sym} 240 -900 0 0 {name=l1 lab=GND}
C {vsource.sym} 160 -760 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 160 -730 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 450 -1040 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 120 -1000 0 0 {name=p2 lab=VIN}
C {title.sym} 180 -60 0 0 {name=l2 author="Judy Yu, Gracia Xia"}
C {isource.sym} 270 -760 0 1 {name=I0 value=\{Ibias\}}
C {lab_pin.sym} 160 -810 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -810 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -920 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -710 0 1 {name=p6 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 240 -940 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {code_shown.sym} 570 -980 0 0 {name=SIM only_toplevel=false value=".param Ibias = 130u
.param w_cap = 1u
.param w_diff = 10u

.control
op

ac dec 20 1e3 1e12

let T = v(VOUT)/v(VIN)

plot db(T)
plot ph(T)*180/pi
.endc
"}
C {vsource.sym} 70 -760 0 0 {name=V1 value="0.5 DC 0 AC 1" savecurrent=false}
C {gnd.sym} 70 -730 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 70 -810 0 1 {name=p8 sig_type=std_logic lab=VIN}
C {parax_cap.sym} 410 -1030 0 0 {name=C1 gnd=0 value=5p m=1}
C {devices/code_shown.sym} 570 -1190 0 0 {name=MODELS only_toplevel=true
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
