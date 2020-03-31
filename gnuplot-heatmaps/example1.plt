set title "Heat Map generated from a file containing Z values only"
unset key
set tic scale 0

# Color runs from white to green
set palette rgbformula 7,2,7
# set palette gray
set cbrange [0:5]
set cblabel "Score"
unset cbtics

set xrange [-0.5:4.5]
set yrange [-0.5:4.5]

set view map
splot 'data.txt' matrix with image
pause -1
