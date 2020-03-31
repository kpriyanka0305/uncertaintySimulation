set xrange [-2:2]
set yrange [-2:2]

set pm3d map
# set palette gray

set samples 100
set isosamples 100

splot sqrt(1 - (x**2) - (y**2))

pause -1
