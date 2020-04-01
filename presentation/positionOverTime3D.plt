load "normal.plt"

set title "position of bus changes over time\nbus speed v_b = (8.0,0.7)"

set yrange [0:10]
set xrange [0:1]

set samples 800, 800

set ylabel "position (m)"
set xlabel "time (s)"
set zlabel "probability"

#set terminal pdfcairo
#set output "positionOverTime3D.pdf"

m(x) = M0 + M1*x + M2*x*x + M3*x*x*x
M0=M1=1;
M2=M3=1;
fit m(x) 'test.nds' using 1:2 via M0,M1,M2,M3

s(x) = S0 + S1*x + S2*x*x + S3*x*x*x
S0=S1=1;
S2=S3=1;
fit s(x) 'test.nds' using 1:3 via S0,S1,S2,S3

f(x,y) = normal(y,m(x),s(x))

splot f(x,y) title "t=0.2"

pause -1
