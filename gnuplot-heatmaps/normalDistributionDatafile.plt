load "normal.plt"

set xrange [-10:10]

#set pm3d map

#set samples 100
#set isosamples 100

plot [u=-10:10] "bikeSpeed.dat" using (normal(u,column(1),column(2)))

pause -1
