## Standard aritmetic operators: +, -, *, /, ^
## Mathematical functions: log(), exp(), sin(), asin(), cos(), acos(), tan(),
##                         atan(), sign(), sqrt(), abs(), min() and max().

log(exp(sin(pi/4)^2)*exp(cos(pi/4)^2))

                        #### Vector arithmetics ####

## c() -> to generate a fector, where c stands for "combine" or "concatenate"

x <- c(1.8, 3.14, 4, 88.169, 13) # names are case-sensitive

length(x)

2 * x + 3 # each element of x is multiplied by 2 before 3 is added

log(x) # logarithms of the original entries of x

## Subseting vectors

x[c(1, 4)] # specifies the elements to be extracted

x[-c(2, 3, 5)] # selects all elements but those indicated

## Pattern vectors

ones <- rep(1, 10)
even <- seq(from = 2, to = 20, by = 2)
trend <- 1981:2005

c(ones, even) # to concatenate vectors