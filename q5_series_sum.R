# Question 5: Series Summation

# Develop a program to calculate the sum of the series: 1 - 2/3 + 3/5 - 4/7 + ... up to a
# specified number of terms. Allow the user to input the number of terms in the series.

expression_sum <- function(lim = 10){
    sum <- 0
    for(i in 1:lim){
        if(i %% 2 == 0){
            sum <- sum - (i / (2*i - 1))
        }else{
            sum <- sum + (i / (2*i - 1))
        }
    }
    return(sum)
}

lim <- readline("Enter the number of terms : ")
lim <- as.numeric(lim)


sum <- expression_sum(lim)
cat("Sum of the series:", sum, "\n")