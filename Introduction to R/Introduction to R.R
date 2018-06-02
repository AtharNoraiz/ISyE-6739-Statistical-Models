
a = 3 + 4
b = 4 * a
c = b/a
d = c - a
print(a)
print(b)
print(c)
print(d)

# arithmatic operations on vectors
v1 = 1 : 20
v2 = 11 : 30 

# to perform arithmatics, all the vectors should be same length
# all the operations are performed elementwise.
v3 = v1 + v2
v4 = v1/v2
v5 = v1 * v2
print(v1)
print(v2)
print(v3)
print(v4)
print(v5)

a = log(10)
b = exp(1)
print(a)
print(b)

# If you want logs to the base 10, then there is a separate function
c = log10(25)
print(c)
#Logs to other bases Suppose you want log to base 3 of 9:
d = log(9, base = 3)
print(d)

# sin and cos functions
x = sin(4)
y = cos(45)
print(x)
print(y)

# other useful functions
print(floor(x))
print(ceiling(x))
print(round(x))
print(abs(x)) # absolute value
print(sqrt(y)) # square root

# we can define a sequence of number using seq function
s = seq(from=1, to=10, by=1); print(s)
t = seq(5, 20, 5); print(t)

#If you know how long the sequence should be, but don’t know the exact upper value, use the length option as below.
s2 = seq(from=0, by=0.03, length=15); print(s2) # this gives a vector with 15 elements

#Sequences can also be constructed in descending order
s3 = seq(20,5, -3); print(s3)

# one can use : istead of seq
s4 = 1:13; print(s4)


# we can now concatenate the sequences using c() function
s5 =  c(s, s3); print(s5)
s6 <- c("This", "is", "an", "example"); print(s6) 

# sometimes we need to replicate a sequence or a value: rep(pattern, number of times)
r1 = rep(1, 5); print(r1)
r2 = rep(s3, 2); print(r2)
r3 = rep(c(0, "x"), 3); print(r3)

height <- 60:68
weight <- c(seq(120, 155, 5), 135)
print(weight[1]) # prints the first element of the weight sequence

# use the logical indexing
print(weight < 140) # gives true or false 
print(weight[weight < 140]) # logical index
print(weight[height>65])


# remove elements by negative index
w2 = weight[-2:-4] # removes the elements 2, 3, and 4 from the sequence
print(w2) # the original weitht had 9 elements, this should have 6.

# to generate a matrix we use matrix(data, nrow, ncol, byrow=F)
m1 = matrix(seq(1, 34, 3), nrow = 3, ncol = 4); print(m1)
m2 = matrix(1:6, nrow=2);  print(m2) # this will fill the matrix col by col
m3 = matrix(1:6, nrow=2, byrow=T); print(m3) # this will fill the matrix row by row


# combine matrices: cbind and rbind
x1= rbind(c(1,2), c(3,4))
x2 <- 10+x1
cbind(x1, x2)
rbind(x1, x2)
cbind(1, x1) # adds one col of ones to the left of x1


# Rules for Computations with Matrices
A <- matrix(0:5, 2, 3)
B <- matrix(seq(0, 10, 2), 2, 3)
C = A * B # this is elementwise
#D = A %*% B # this is matrix multiplication. But gives error because the dimensions does not match
print(C)


# transpose of a matrix 
D = t(A) %*% B # t(A) gives the transpose of A
print(D)

name=c('A','B','C','D','E')
age=c(20,21,22,21,20)
height=c(170,171,175,165,181)
gender=c('M','F','M','F','M')
d<-data.frame(name,age,height,gender)
print(d)

# we can get the cols of d as follows,
d$name # this gives a vector
# or
d[1] # this gives a dataframe
d[[2]] # this gives a vector
d[[2]][2:3]

library(MASS)
head(d, n=3)
tail(d, n=3)

x <- 1:10
y <- c(T,F,T)
z <- c("Hey", "You")
L <- list(x, y, z)
print(L)
print(L[[1]])

for(i in 1:10) { print(i) }

a = numeric(5) # initiate the value of a
for (i in seq(1, 5)){
    a[i] = 2 * i + 1
}
print(a)

# while
x = 0
while(x < 5) {
    print(x)
    x = x + 1
}

# function for normal distribution
x <- pretty(c(-3,3), 30) #Compute a sequence of about n+1 equally spaced ‘round’ values which cover the range of the values in x
y <- dnorm(x) # generates normal density
#print(y)
#plot(x, y, type='l', xlab="Normal Deviate", ylab="Density", yaxs="i")

# cumulative normal probability for q 
print(pnorm(1.2)) # gives the probability value
x = seq(-3, 3, 1)
print(pnorm(x, m = 0, sd = 0.5))

# gives the quantile
qnorm(0.9) # gives the value at which the probability is 0.9

# generate a random variable
r = rnorm(1000, m=0,sd=1)
#print(r)
hist(r)

# let us generate some random numbers from normal distribution
x = rnorm(1000) # 100 numbers from normal dist
plot(x)
abline(h = mean(x), col = 'red') # plots a horizontal line

boxplot(x) # this gives the boxplot of x
# now let us find the meaan and standard deviation of x

# let me sample from x and genrate a boxplot
x.sampled = sample(x, 200)
boxplot(x.sampled)

m = mean(x)
sigma = sd(x)
hist(x) # plot the histogram
abline(v = m, col = 'red') # adds a vertical line
abline(v = m +3*sigma, col = 'red')
abline(v = m - 3*sigma, col = 'red')

# now let us square the values of the x and plot that.
y = x^2
boxplot(y) # this gives chi-square distribution
# now let us add the quartiles
q = quantile(y, c(0.25, 0.5, 0.75, 1), type = 1) # this gives the quartile of data
print(q)
abline(h = q[1], col= 'red')
abline(h = q[2], col= 'red')
abline(h = q[3], col= 'red')
abline(h = q[4], col= 'red')
abline(h = 1.5 * (q[3] - q[1]) + q[3], col = 'blue')

## plot x and y in same boxplot
z = cbind(x, y)
dim(z) # gives the dimension of z
boxplot(z)

# now let us find the mean, std, median of y
m = mean(y)
s = sd(y)
md = median(y)
hist(y)
abline(v = m, col = 'blue')
abline(v=md, col = 'red')

# let me generate a time-series data
x = rnorm(100)
y = numeric(100)
y[1] = x[1]
for (i in seq(2, length(x))) {
    y[i] = y[i-1] + x[i]
}
plot(y, xlab = 'time', ylab = 'time', pch = 16, cex=1)
lines(y)
