.control
op

* 44.1kz sample rate  
* 1/44100 == 2.2675736961451248e-05 
* 22.675736961451248us

tran 22.675736961451248us 1.01s 1s
hardcopy postscript/colpitts.ps V(2)

tran 22.675736961451248us 3s
wrdata vectors/colpitts.vec v1#branch

.endc
