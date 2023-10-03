#### Lists ####

# generic vectors where each element can be virtually any type of object

# Creating a list containing a sample from a standard normal distribution

mylist <- list(sample = rnorm(5), family = 'normal distribution', 
               parameters = list(mean = 0, sd = 1))
mylist

# Select certain elements from a list, different methods for the same result

mylist[[1]]
mylist[['sample']]
mylist$sample

mylist[[3]]$sd # the third element is also a list

#### Logical comparisons ####

# <, <=, >, >=, ==, != 
# If expr1 and expr2 are logical expressions, then expr1 & expr2 (logical 'and'),
# expr1 | expr2 (logical 'or') adn !expr1 is the negation of expr1.

x <- c(1.8, 3.14, 4, 88.169, 13)

x > 3 & x <= 4

# To assess for which elements of the vector the expression is TRUE:

which(x > 3 & x <= 4)

# all() and any() check whether all or at least some entries are TRUE:

all(x > 3)
any(x > 3)

# FALSE sometimes can become 0 and TRUE -> 1:

7 + TRUE

#### Coercion ####

is.numeric(x) # check the type of x
is.character(x)

as.character(x) # convert an object from one type/class to a different one

# In certain situations, coercion is also forced automatically

c(1, 'a') # a vector can only contain elements of the same mode

#### Random number generation ####

set.seed(123) # simulations can be made exactly reproducible
rnorm(2)

rnorm(2)

# Drawing a random sample, with or without (default option) replacement

sample(1:5)

sample(c('male', 'female'), size = 5, replace = TRUE, prob = c(0.2, 0.8))

# The above command draws a sample of size 5, with replacement. from the 
# values 'male' and 'female', which are drawn with probabilities 0.2 and 0.8.

#### Flow control ####

# If/else statement

#if(cond) {
#  expr1
#} else {
#  expr2
#}

if(rnorm(1) > 0) sum(x) else mean(x)

ifelse(x > 4, sqrt(x), x^2)

# For loop

for(i in 2:5) {
  x[i] <- x[i] - x[i-1]
}
x[-1]

# While loop

while(sum(x) < 100){
  x <- 2 * x
}
x
