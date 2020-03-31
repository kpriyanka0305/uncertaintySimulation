set boxwidth 0.5
set style fill solid
set title 'Probability distribution for camera'
set ylabel 'Probability/Confidence'
set xlabel 'Value (Boolean)'
set yrange[0:1]

set term pdfcairo font "Arial,12"
set output 'barChart.pdf'

plot "data.dat" using 1:3:xtic(2) with boxes title 'camera working condition'
