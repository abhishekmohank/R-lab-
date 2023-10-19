# Question 7: Fibonacci Series with a Twist

# Develop a program to generate the Fibonacci series, but with a twist. Allow the user to
# input the number of terms and generate the series where each term is the sum of the
# last three terms.

Fibonacci_new <- function(lim){
    limiter <- lim - 3
    a <- 0
    b <- 1
    c <- 1

    cat(a, b, c, " ", sep = " ")

    while(limiter > 0){
        d <- a + b + c
        cat(d, " ", sep = " ")
        a <- b
        b <- c
        c <- d
        limiter <- limiter - 1
    }
}

lim <- readline("Enter the number of terms : ")
lim <- as.numeric(lim)
Fibonacci_new(lim)