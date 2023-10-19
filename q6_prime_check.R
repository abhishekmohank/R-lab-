# Question 6: Prime Number Checker

# Write a program to check whether a given number is prime or not. Implement this using
# both loops and functions. Additionally, allow the user to input a range and identify all
# prime numbers within that range.

# Function to check if a number is prime
prime_check <- function(n) {
    if (n <= 1) {
        return(FALSE)
    }
    if (n <= 3) {
        return(TRUE)
    }
    if (n %% 2 == 0 || n %% 3 == 0) {
        return(FALSE)
    }
    i <- 5
    while (i * i <= n) {
        if (n %% i == 0 || n %% (i + 2) == 0) {
            return(FALSE)
        }
        i <- i + 6
    }
    return(TRUE)
}

# User input range

prime_in_range <- function(start = 0 ,stop = 100){
    for(j in start:stop){
        if (prime_check(j)){
            print(j)
        }
    }
}

start_range <- readline("Enter the start of the range : ")
stop_range <- readline("Enter the end of the range : ")

prime_in_range(as.numeric(start_range), as.numeric(stop_range))
