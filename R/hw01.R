#
# STAT 484 homework assignment 1
# Jennifer Mullen
#



#
# Question 1
#

P1 <- c(23,45,67,46,57,23,83,59,12,64)

# What is the maximum value?
max(P1)

# What is the minimum value?
min(P1)

# What is the mean value
mean(P1)


#
# Question 2
#

# Change the ninth value to 42
P1[9] <- 42
P1

# See how the mean has changed
mean(P1)

# How many values are greater than 40?
length(P1[P1 > 40])

# What is the mean of values over 40?
mean(P1[which(P1 > 40)])


#
# Question 3
#

# the sum of P1
sum(P1)

# the mean (using the sum and length)
sum(P1) / length(P1)

# the log(base10) of P1
log(x = P1, base = 10)

# the difference between each element of P1 and the mean of P1
P1 - mean(P1)


#
# Question 4 
#


a<-11:20
b<-c(2,4,6,8)

# a * 2
# prediction: 22 24 26 28 30 32 34 36 38 40
a * 2

# a[b]
# prediction: 12 14 16 18
a[b]

# b[a]
# prediction: NA NA NA NA NA NA NA NA NA NA
#   because b does not have indices 11-20
b[a]

# c(a, b)
# prediction: 11 12 13 14 15 16 17 18 19 20 2 4 6 8
c(a, b)

# a + b
# prediction: 13 16 19 22 17 20 23 26 21 24 
#   R will also warn about unequal object length
a + b
