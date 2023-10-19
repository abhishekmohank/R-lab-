# Question 10: Data Reversal

# Write a program to reverse the order of elements in a given list. Implement this without
# using any built-in functions or loops.

reverse <- function(in_list){
    new_list <- list()
    length <- length(in_list)

    for (i in 1:length){
        new_list[[i]] <- in_list[[length - i + 1]]
    }

    return(new_list)
}

# User input list

input_list <- readline("Enter the list : ")

input_list <- strsplit(input_list, " ")[[1]]

input_list <- as.list(input_list)

reversed_list <- reverse(input_list)

cat("Reversed List:\n")
print(reversed_list)
