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
C 40300 46900 1 0 0 spice-include-1.sym
{
T 40400 47200 5 10 0 1 0 0 1
device=include
T 40400 47300 5 10 1 1 0 0 1
refdes=A5
T 40800 47000 5 10 1 1 0 0 1
file=./commands/multivibrator.cmd
}
C 40300 48200 1 0 0 spice-directive-1.sym
{
T 40400 48500 5 10 0 1 0 0 1
device=directive
T 40400 48600 5 10 1 1 0 0 1
refdes=A3
T 40400 48300 5 10 1 1 0 0 1
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
T 44900 45100 5 10 1 1 0 6 1
refdes=Q1
T 45200 44900 5 10 1 1 0 6 1
model-name=Q2N2222a
}
C 45400 45700 1 0 0 capacitor-1.sym
{
T 45600 46400 5 10 0 0 0 0 1
device=CAPACITOR
T 46000 46300 5 10 1 1 180 0 1
refdes=C1
T 45600 46600 5 10 0 0 0 0 1
symversion=0.1
T 46100 45600 5 10 1 1 180 0 1
value=7.25nf
}
C 49700 43600 1 0 0 ground.sym
C 49400 44400 1 0 0 npn-1.sym
{
T 50000 44900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 50100 45100 5 10 1 1 0 0 1
refdes=Q2
T 49800 44900 5 10 1 1 0 0 1
model-name=Q2N2222a
}
C 48700 45700 1 0 0 capacitor-1.sym
{
T 48900 46400 5 10 0 0 0 0 1
device=CAPACITOR
T 49300 46300 5 10 1 1 180 0 1
refdes=C2
T 48900 46600 5 10 0 0 0 0 1
symversion=0.1
T 49400 45600 5 10 1 1 180 0 1
value=7.25nf
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
T 46400 47200 5 10 1 1 180 0 1
refdes=R2
T 46400 47000 5 10 1 1 180 0 1
value=100k
}
C 48300 47500 1 270 0 resistor-1.sym
{
T 48700 47200 5 10 0 0 270 0 1
device=RESISTOR
T 48200 47200 5 10 1 1 180 0 1
refdes=R3
T 48200 47000 5 10 1 1 180 0 1
value=100k
}
C 45000 47500 1 270 0 resistor-1.sym
{
T 45400 47200 5 10 0 0 270 0 1
device=RESISTOR
T 44900 47200 5 10 1 1 180 0 1
refdes=R1
T 44900 47000 5 10 1 1 180 0 1
value=1k
}
C 49800 47500 1 270 0 resistor-1.sym
{
T 50200 47200 5 10 0 0 270 0 1
device=RESISTOR
T 49700 47200 5 10 1 1 180 0 1
refdes=R4
T 49700 47000 5 10 1 1 180 0 1
value=1k
}
N 49900 46600 49900 45400 4
{
T 50000 46100 5 10 1 1 0 0 1
net=1
}
N 49600 45900 49900 45900 4
{
T 49700 46000 5 10 1 1 0 0 1
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
N 45100 47500 45100 47800 4
{
T 45200 47500 5 10 1 1 0 0 1
netname=2
}
N 45100 47800 50200 47800 4
{
T 45800 47500 5 10 1 1 0 0 1
netname=2
}
N 46600 47800 46600 47500 4
{
T 47200 47600 5 10 1 1 0 0 1
netname=2
}
N 48400 47800 48400 47500 4
{
T 49000 47600 5 10 1 1 0 0 1
netname=2
}
N 49900 47800 49900 47500 4
{
T 50000 47600 5 10 1 1 0 0 1
netname=2
}
N 45100 43900 53400 43900 4
{
T 47400 44000 5 10 1 1 0 0 1
netname=0
}
N 49900 43900 49900 44400 4
{
T 51000 44000 5 10 1 1 0 0 1
netname=0
}
N 51400 43900 51400 47800 4
{
T 51200 47400 5 10 1 1 0 0 1
netname=0
T 51200 45000 5 10 1 1 0 0 1
netname=0
}
N 45100 44400 45100 43900 4
{
T 45200 44100 5 10 1 1 0 0 1
netname=0
}
C 50200 47600 1 0 0 voltage-3.sym
{
T 50400 48300 5 8 0 0 0 0 1
device=VOLTAGE_SOURCE
T 50800 48300 5 10 1 1 180 0 1
refdes=v1
T 50800 47500 5 10 1 1 180 0 1
value=5v
}
C 40300 47500 1 0 0 spice-directive-1.sym
{
T 40400 47900 5 10 1 1 0 0 1
refdes=A4
T 40400 47600 5 10 1 1 0 0 1
value=.ic v(1)=1mv
T 40400 47800 5 10 0 1 0 0 1
device=directive
}
N 49900 45900 52100 45900 4
{
T 51800 45700 5 10 1 1 0 0 1
netname=1
}
N 51100 47800 51400 47800 4
C 52000 45900 1 270 0 resistor-1.sym
{
T 52400 45600 5 10 0 0 270 0 1
device=RESISTOR
T 51900 45600 5 10 1 1 180 0 1
refdes=R5
T 51900 45400 5 10 1 1 180 0 1
value=1k
}
C 52000 44800 1 270 0 resistor-1.sym
{
T 52400 44500 5 10 0 0 270 0 1
device=RESISTOR
T 51900 44500 5 10 1 1 180 0 1
refdes=R6
T 51900 44300 5 10 1 1 180 0 1
value=1k
}
N 52100 45000 52100 44800 4
{
T 52500 44700 5 10 1 1 0 0 1
netname=5
}
N 52100 44900 52900 44900 4
{
T 51900 44800 5 10 1 1 0 0 1
netname=5
}
N 54100 44700 54100 43700 4
{
T 54400 44800 5 10 1 1 0 0 1
netname=out1
}
N 52600 43700 54100 43700 4
{
T 53100 43500 5 10 1 1 0 0 1
netname=out1
}
N 52600 43700 52600 44500 4
{
T 52200 44000 5 10 1 1 0 0 1
netname=out1
}
N 53400 43900 53400 44300 4
{
T 53200 44000 5 10 1 1 0 0 1
netname=0
}
N 49900 47800 49900 48500 4
{
T 50000 48000 5 10 1 1 0 0 1
netname=2
}
N 49900 48500 53400 48500 4
{
T 51800 48300 5 10 1 1 0 0 1
netname=2
}
N 53400 48500 53400 45100 4
{
T 53200 46700 5 10 1 1 0 0 1
netname=2
}
N 53900 44700 54600 44700 4
{
T 53700 44200 5 10 1 1 0 0 1
netname=out1
}
C 40300 49100 1 0 0 spice-model-1.sym
{
T 40400 49800 5 10 0 1 0 0 1
device=model
T 40400 49700 5 10 1 1 0 0 1
refdes=A2
T 40800 49200 5 10 1 1 0 0 1
file=./models/uA741.mod
T 41500 49400 5 10 1 1 0 0 1
model-name=uA741
}
N 52600 44500 52900 44500 4
{
T 52700 44300 5 10 1 1 0 0 1
netname=out1
}
C 52900 44300 1 0 0 opamp-1.sym
{
T 53600 45100 5 10 0 0 0 0 1
device=OPAMP
T 53600 45300 5 10 1 1 0 0 1
refdes=U1
T 53600 45700 5 10 0 0 0 0 1
symversion=0.1
T 53500 45100 5 10 1 1 0 0 1
model-name=uA741
}
