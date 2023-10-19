# Question 9: Data Compression

# Design a program to read a string and compress it using run-length encoding. In
# run-length encoding, consecutive repeated characters are replaced with a single
# character followed by the count of occurrences.

run_length_encode <- function(input_str){

    # Split the string into a character vector
    char_vector <- strsplit(input_str, "")[[1]]
    # Null charecter to store encoding
    encoded_str <- character(0)

    # Loop through the character vector
    count <- 1 # Initialize count to 1

    for (i in 2:length(char_vector)){
        if (char_vector[i] == char_vector[i-1]){
            count <- count + 1
        } else {
            encoded_str <- c(encoded_str, char_vector[i-1], count)
            count <- 1
        }
    }

    # Add the last character and count
    encoded_str <- c(encoded_str, char_vector[length(char_vector)], count)
    
    return(paste(encoded_str, collapse = ""))

}

# User input string

input_str <- readline("Enter the string : ")
encoded_str <- run_length_encode(input_str)

cat("Encoded String:", encoded_str, "\n")
