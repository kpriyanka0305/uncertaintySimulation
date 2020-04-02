load "normal.plt"

set title "position of bus changes over time\nbus speed v_b = (8.0,0.7)"

#set yrange [0:1]
set xrange [0:10]

set samples 800

set xlabel "position(t)"
set ylabel "probability"

set terminal pdfcairo
set output "positionOverTime2D.pdf"

plot \
  normal(x,1.6,0.14) title "t=0.2", \
  normal(x,3.2,0.28) title "t=0.4", \
  normal(x,4.8,0.42) title "t=0.6", \
  normal(x,6.4,0.56) title "t=0.8", \
  normal(x,8.0,0.70) title "t=1.0"


pause -1
