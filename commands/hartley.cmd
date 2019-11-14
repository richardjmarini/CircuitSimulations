.control
op

tran 1ms 50ms
hardcopy postscript/colpitts.ps V(n1,n2)

tran 1ms 3s
wrdata vectors/colpitts v1#branch
gnuplot vectors/colpitts plot using 1:2 with lines

.endc
