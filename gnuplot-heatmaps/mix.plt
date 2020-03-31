fx(u) = (column(1)) * (1 - (column(1)) * cos(u)) *(cos((column(1))*pi/180)*cos((column(1))*pi/180) - sin((column(1))*pi/180)*sin((column(1)))*cos((column(1))*pi/180))
fy(u) = (column(1)) * (1 - (column(1)) * cos(u)) *(cos((column(1))*pi/180)*sin((column(1))*pi/180) + sin((column(1))*pi/180)*cos((column(1))*pi/180)*cos((column(1))*pi/180))
fz(u) = (column(1)) * (1 - (column(1)) * cos(u)) *(sin((column(1))*pi/180) * sin((column(1))*pi/180))

plot "file.txt" u (x):(fy(pi*x/10.)) t "yey"

pause -1
