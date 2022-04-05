.control
op

* 44.1kz sample rate 
* 1/44100 == 2.2675736961451248e-05 
* 22.675736961451248us

tran 0.1s 1s
set hcopydevtype=postscript
set hcopypscolor=1
set color0=rgb:0/0/f
set color1=rgb:f/f/f
set color2=rgb:f/0/0
set color3=rgb:0/f/0
set color4=rgb:0/f/f
set color5=rgb:f/0/f
set color6=rgb:5/5/5
set color7=rgb:0/5/5

hardcopy postscript/polivoks.ps v(gin1) v(TP1) v(TP4)

.endc
