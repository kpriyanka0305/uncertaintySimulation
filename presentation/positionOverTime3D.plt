#set terminal pdfcairo
#set output "positionOverTime3D.pdf"

unset key

set xlabel "time (s)"
set ylabel "distance (m)"
set zlabel "probability"

set palette defined ( 0 '#eeeeee',\
                      1 '#000fff',\
                      2 '#0090ff',\
                      3 '#0fffee',\
                      4 '#90ff70',\
                      5 '#ffee00',\
                      6 '#ff7000',\
                      7 '#ee0000',\
                      8 '#7f0000')

splot 'test.out' with lines lc palette
#splot 'test.out' with pm3d

pause -1
