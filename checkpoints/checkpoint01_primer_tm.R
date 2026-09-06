sequence <- "GTAAAACGACGGCCAGT"
a <- 6
t <- 2
c <- 4
g <- 5
n <- (a+t+c+g)
tm = 2*(a+t) + 4*(c+g)
gc = ((c+g)/n)*100
print(tm)
print(gc)
