#
# STAT 484 homework assignment 2
# Jennifer Mullen
#



#
# Question 1
#

# try rep(4,times=5) and rep(c(1,2),each=3)
(rep(4,times=5))
(rep(c(1,2),each=3))

# Use rep() to enter the sequence 1 1 1 1 2 2 2 2 3 3 3 3 repeated 3 times
(s <- rep(x=c(1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3), each=3))


# Now convert it to a factor with the levels “Low”,“Medium”, and “High”
(f <- factor(s))
(levels(f) <- c("Low","Medium", "High"))

# Can you change the levels to “Never”,“Rarely”,“Sometimes”?
(levels(f) <- c("Never","Rarely","Sometimes"))

#
# Question 2
#

# Convert the factor from Problem 1 into a character vector, and save it (assign it a name).
f.chars <- as.factor(as.character(f))

# Can you convert the character vector to a numeric vector?
as.numeric(f.chars)

#
# Question 3
#

(a <-factor(scan(text="2 4 3 3 2 1 1 2 3 4 2 3 3 4 1 3 2 1 4 3 2 4")))

# Convert a into an ordered factor with levels "Sm","Med","Lg","X-Lg" (with 1 for “Sm”)
(levels(a) <- c("Sm", "Med", "Lg", "X-Lg"))
(a <- ordered(a))

# How many values are equal to or larger than “Lg”?
(length(a[a >= "Lg"]))


#
# Question 4
#

# First, roll two dice. Since the dice are independent, we can represent this with two vectors.
# The elements in the same position at each vector are considered the two values appearing in one roll.
roll.die1 <- sample(x=1:6, size=1000, replace=TRUE)
roll.die2 <- sample(x=1:6, size=1000, replace=TRUE)

# I realized that this question can be interpreted two different ways. The first is to count the number of times
# a value appears per die. In other words, if the result of a roll is (1, 1) then the frequency of rolling a 1 is 2.
# I don't think this is the correct interpretation, but just in case I'm including it here.
roll.all <- c(roll.die1, roll.die2)
barplot(table(roll.all))

# The second interpretation, which I believe is the one intended, is to count the frequence of a number 
# appearing per roll of both dice. In this case, rolling (1, 1) would give 1 a frequence of 1, not 2.
# We can remove the duplicates by combinging both vectors into one, but adding the value of the second only
# if it does not match the value in the first vector.
roll.unique = c(roll.die1, roll.die2[roll.die2 != roll.die1])
barplot(table(roll.unique))


# Extra What happens if the two dice have different numbers of sides?
# The frequency for shared sides will tend to be higher than non-shared.
d6 <- sample(x=1:6, size=1000, replace=TRUE)
d20 <- sample(x=1:20, size=1000, replace=TRUE)
rolls <- c(d6, d20[d20 != d6])
barplot(table(rolls))