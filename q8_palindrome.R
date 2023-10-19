# Question 8: Palindrome Checker

# Write a program that reads a string and checks if it's a palindrome. A palindrome is a
# string that reads the same forwards and backwards, ignoring spaces and punctuation.

# Function to check if a string is palindrome

palindrome_check <- function(str) {
    rev_str <- rev(str)
    rev_str <- paste(rev_str, collapse = "")
    if (str == rev_str) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

# User input string

input_str <- readline("Enter the string : ")
palindrome_check(input_str)
