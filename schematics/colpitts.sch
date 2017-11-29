v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 47500 46700 1 270 0 capacitor-1.sym
{
T 48200 46500 5 10 0 0 270 0 1
device=CAPACITOR
T 48000 46300 5 10 1 1 0 0 1
refdes=C1
T 48400 46500 5 10 0 0 270 0 1
symversion=0.1
T 48000 46000 5 10 1 1 0 0 1
value=100uf
}
C 47500 45800 1 270 0 capacitor-1.sym
{
T 48200 45600 5 10 0 0 270 0 1
device=CAPACITOR
T 48000 45500 5 10 1 1 0 0 1
refdes=C2
T 48400 45600 5 10 0 0 270 0 1
symversion=0.1
T 48000 45200 5 10 1 1 0 0 1
value=100uf
}
C 51600 46200 1 90 0 resistor-1.sym
{
T 51200 46500 5 10 0 0 90 0 1
device=RESISTOR
T 51900 46800 5 10 1 1 180 0 1
refdes=R1
T 51600 46400 5 10 1 1 0 0 1
value=100
}
C 46200 46300 1 270 0 coil-1.sym
{
T 46600 46100 5 10 0 0 270 0 1
device=COIL
T 46400 46100 5 10 1 1 0 0 1
refdes=L1
T 46800 46100 5 10 0 0 270 0 1
symversion=0.1
T 46400 45800 5 10 1 1 0 0 1
value=10mH
}
C 49200 46500 1 0 0 npn-1.sym
{
T 49800 47000 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 49800 47100 5 10 1 1 0 0 1
refdes=Q1
T 49800 46900 5 10 1 1 0 0 1
model-name=Q2N2222a
}
N 46200 46300 46200 47000 4
N 46200 47000 49200 47000 4
{
T 46200 47100 5 10 1 1 0 0 1
netname=n0
}
N 49700 43800 49700 46500 4
N 49700 45800 47700 45800 4
{
T 52100 49600 5 10 1 1 0 0 1
netname=0
}
N 49700 47700 51500 47700 4
{
T 51400 47800 5 10 1 1 0 0 1
netname=n1
}
N 51500 46200 51500 44600 4
N 46200 44600 51500 44600 4
{
T 51600 44600 5 10 1 1 0 0 1
netname=n2
}
N 46200 44600 46200 45300 4
C 49800 47900 1 90 0 resistor-1.sym
{
T 49400 48200 5 10 0 0 90 0 1
device=RESISTOR
T 49900 48500 5 10 1 1 0 0 1
refdes=R2
T 49900 48200 5 10 1 1 0 0 1
value=100
}
N 49700 47500 49700 47900 4
C 49500 43500 1 0 0 ground.sym
N 50400 49400 49700 49400 4
{
T 49600 49600 5 10 1 1 0 0 1
netname=n3
}
T 50100 40700 9 10 1 0 0 0 1
Colpitts Oscillator
C 40300 50000 1 0 0 spice-model-1.sym
{
T 40400 50700 5 10 0 1 0 0 1
device=model
T 40400 50600 5 10 1 1 0 0 1
refdes=A1
T 40800 50100 5 10 1 1 0 0 1
file=./models/2N2222.mod
T 41500 50300 5 10 1 1 0 0 1
model-name=Q2N2222a
}
C 40300 48600 1 0 0 spice-include-1.sym
{
T 40400 48900 5 10 0 1 0 0 1
device=include
T 40400 49000 5 10 1 1 0 0 1
refdes=A3
T 40800 48700 5 10 1 1 0 0 1
file=./commands/simulation.cmd
}
C 40300 49300 1 0 0 spice-directive-1.sym
{
T 40400 49600 5 10 0 1 0 0 1
device=directive
T 40400 49700 5 10 1 1 0 0 1
refdes=A2
T 40400 49400 5 10 1 1 0 0 1
value=.options TEMP=25
}
T 50100 40400 9 10 1 0 0 0 1
colpitts.sch
T 54000 40100 9 10 1 0 0 0 1
Richard J. Marini
T 53900 40400 9 10 1 0 0 0 1
v1.0
T 50100 40100 9 10 1 0 0 0 1
1
T 51600 40100 9 10 1 0 0 0 1
1
C 50400 49200 1 0 0 voltage-1.sym
{
T 50500 49700 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 50700 49900 5 10 1 1 0 0 1
refdes=V1
T 50700 49700 5 10 1 1 0 0 1
value=5v
}
N 51300 49400 52200 49400 4
N 52200 49400 52200 44100 4
N 52200 44100 49700 44100 4
N 49700 49400 49700 48800 4
N 51500 47700 51500 47100 4
N 47700 46700 47700 47000 4
N 47700 44900 47700 44600 4
