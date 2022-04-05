.control
op

* 44.1kz sample rate 
* 1/44100 == 2.2675736961451248e-05 
* 22.675736961451248us

tran 22.675736961451248us 1.001s 1s
hardcopy postscript/multivibrator.ps v(out1)

tran 22.675736961451248us  3s
wrdata vectors/multivibrator.vec v1#branch

.endc
