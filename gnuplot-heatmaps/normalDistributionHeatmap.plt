load "normal.plt"

set xrange [-10:10]
set yrange [-10:10]


set pm3d map

set samples 100
set isosamples 100

splot normal(y,sin(x),2.5)

pause -1
