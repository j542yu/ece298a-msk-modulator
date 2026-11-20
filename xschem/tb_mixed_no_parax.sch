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
x1=4.95114e-07
x2=2.00501e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="dac_out
clk
in
rst_n"
color="4 10 7 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
C {launcher.sym} 740 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mixed/mixed.raw tran"
}
