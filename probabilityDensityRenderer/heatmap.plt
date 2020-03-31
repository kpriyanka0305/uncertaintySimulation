set title "UReal over time"
unset key
set tic scale 0

# Color runs from white to green
#set palette rgbformula 7,2,7
# set palette gray
#set cbrange [0:5]
#set cblabel "Score"
#unset cbtics

# set xrange [-0.5:4.5]
# set yrange [-0.5:4.5]

set palette defined ( 0 '#000090',\
                      1 '#000fff',\
                      2 '#0090ff',\
                      3 '#0fffee',\
                      4 '#90ff70',\
                      5 '#ffee00',\
                      6 '#ff7000',\
                      7 '#ee0000',\
                      8 '#7f0000')

set view map
splot 'test.out' matrix with image
pause -1
