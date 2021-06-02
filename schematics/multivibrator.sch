v 20130925 2
C 40000 40000 0 0 0 title-B.sym
T 50100 40700 9 10 1 0 0 0 1
Multivibrator Circuit
C 40300 50000 1 0 0 spice-model-1.sym
{
T 40400 50700 5 10 0 1 0 0 1
device=model
T 40400 50600 5 10 1 1 0 0 1
refdes=A1
T 40800 50100 5 10 1 1 0 0 1
file=./models/2N2222.mod
T 41500 50300 5 10 1 1 0 0 1
model-name=Q2N2222
}
C 40300 48000 1 0 0 spice-include-1.sym
{
T 40400 48300 5 10 0 1 0 0 1
device=include
T 40400 48400 5 10 1 1 0 0 1
refdes=A4
T 40800 48100 5 10 1 1 0 0 1
file=./commands/multivibrator.cmd
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
T 50200 40400 9 10 1 0 0 0 1
multivibrator.sch
T 54000 40100 9 10 1 0 0 0 1
Richard J. Marini
T 53900 40400 9 10 1 0 0 0 1
v1.0
T 50100 40100 9 10 1 0 0 0 1
1
T 51600 40100 9 10 1 0 0 0 1
1
C 45600 44400 1 0 1 npn-1.sym
{
T 45000 44900 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 45000 45000 5 10 1 1 0 6 1
refdes=Q1
T 45100 44700 5 10 1 1 0 6 1
model-name=Q2N2222a
}
C 45400 45700 1 0 0 capacitor-1.sym
{
T 45600 46400 5 10 0 0 0 0 1
device=CAPACITOR
T 45800 46200 5 10 1 1 90 0 1
refdes=C1
T 45600 46600 5 10 0 0 0 0 1
symversion=0.1
T 46100 46200 5 10 1 1 90 0 1
value=10nf
}
C 49700 43600 1 0 0 ground.sym
C 49400 44400 1 0 0 npn-1.sym
{
T 50000 44900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 50000 45000 5 10 1 1 0 0 1
refdes=Q2
T 50000 44800 5 10 1 1 0 0 1
model-name=Q2N2222a
}
C 48700 45700 1 0 0 capacitor-1.sym
{
T 48900 46400 5 10 0 0 0 0 1
device=CAPACITOR
T 49100 46200 5 10 1 1 90 0 1
refdes=C2
T 48900 46600 5 10 0 0 0 0 1
symversion=0.1
T 49400 46200 5 10 1 1 90 0 1
value=10nf
}
N 48700 45900 48400 45900 4
{
T 48600 45700 5 10 1 1 0 0 1
netname=3
}
N 48400 45900 48400 46600 4
{
T 47900 45800 5 10 1 1 0 0 1
netname=3
}
N 48400 45900 45600 44900 4
{
T 48200 46200 5 10 1 1 0 0 1
netname=3
}
N 46300 45900 46600 45900 4
{
T 46400 45700 5 10 1 1 0 0 1
netname=4
}
N 46600 45900 46600 46600 4
{
T 47100 45800 5 10 1 1 0 0 1
netname=4
}
N 46600 45900 49400 44900 4
{
T 46700 46200 5 10 1 1 0 0 1
netname=4
}
C 46500 47500 1 270 0 resistor-1.sym
{
T 46900 47200 5 10 0 0 270 0 1
device=RESISTOR
T 46400 46900 5 10 1 1 180 0 1
refdes=R2
T 46400 47200 5 10 1 1 180 0 1
value=100k
}
C 48300 47500 1 270 0 resistor-1.sym
{
T 48700 47200 5 10 0 0 270 0 1
device=RESISTOR
T 48200 46900 5 10 1 1 180 0 1
refdes=R3
T 48200 47200 5 10 1 1 180 0 1
value=100k
}
C 45000 47500 1 270 0 resistor-1.sym
{
T 45400 47200 5 10 0 0 270 0 1
device=RESISTOR
T 44900 46900 5 10 1 1 180 0 1
refdes=R1
T 44900 47200 5 10 1 1 180 0 1
value=1k
}
C 49800 47500 1 270 0 resistor-1.sym
{
T 50200 47200 5 10 0 0 270 0 1
device=RESISTOR
T 49700 46900 5 10 1 1 180 0 1
refdes=R4
T 49700 47200 5 10 1 1 180 0 1
value=1k
}
N 49900 46600 49900 45400 4
{
T 50000 46200 5 10 1 1 0 0 1
net=1
}
N 49600 45900 49900 45900 4
{
T 49600 46000 5 10 1 1 0 0 1
net=1
T 50000 45600 5 10 1 1 0 0 1
netname=1
}
N 45100 46600 45100 45400 4
{
T 45200 46100 5 10 1 1 0 0 1
netname=5
}
N 45400 45900 45100 45900 4
{
T 45200 45600 5 10 1 1 0 0 1
netname=5
}
N 45100 47500 45100 47900 4
{
T 45200 47500 5 10 1 1 0 0 1
netname=2
}
N 45100 47900 52200 47900 4
{
T 45800 47600 5 10 1 1 0 0 1
netname=2
}
N 46600 47900 46600 47500 4
{
T 47200 47600 5 10 1 1 0 0 1
netname=2
}
N 48400 47900 48400 47500 4
{
T 49000 47600 5 10 1 1 0 0 1
netname=2
}
N 49900 47900 49900 47500 4
{
T 50200 47600 5 10 1 1 0 0 1
netname=2
}
N 45100 43900 52200 43900 4
{
T 47400 44000 5 10 1 1 0 0 1
netname=0
}
N 49900 43900 49900 44400 4
{
T 51000 44000 5 10 1 1 0 0 1
netname=0
}
N 52200 47900 52200 46300 4
{
T 52000 47400 5 10 1 1 0 0 1
netname=2
}
N 52200 45400 52200 43900 4
{
T 52000 45000 5 10 1 1 0 0 1
netname=0
}
N 45100 44400 45100 43900 4
{
T 45200 44100 5 10 1 1 0 0 1
netname=0
}
C 52000 46300 1 270 0 voltage-3.sym
{
T 52700 46100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 52500 46000 5 10 1 1 0 0 1
refdes=v1
T 52500 45800 5 10 1 0 0 0 1
value=5v
}
C 40300 48600 1 0 0 spice-directive-1.sym
{
T 40400 49000 5 10 1 1 0 0 1
refdes=A3
T 40400 48700 5 10 1 1 0 0 1
value=.ic v(1)=1mv
T 40400 48900 5 10 0 1 0 0 1
device=directive
}
