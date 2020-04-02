# generalized normal distribution
normal(x,m,s) = pdf((x - m) / s) / s

# standard normal distribution
pdf(x) = exp(-x*x / 2) / sqrt(2*pi)
