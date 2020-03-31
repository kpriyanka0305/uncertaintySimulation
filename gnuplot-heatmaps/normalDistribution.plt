load "normal.plt"

set xrange [0:15]

plot normal(x,8.0,0.7), \
     normal(x,8.0,0.5), \
     normal(x,8.0,1.0), \
     normal(x,8.0,1.3)

pause -1
