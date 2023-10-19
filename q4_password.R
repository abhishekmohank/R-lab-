# Question 4: Password Generator

# Write a program to generate a random password for a user. The password should
# include a mix of uppercase letters, lowercase letters, digits, and special characters.
# Allow the user to specify the length of the password.

genrate_rand_passwd <- function(length){
    # Define character sets for each category
    lowercase_letters <- sample(letters, length, replace = TRUE)
    uppercase_letters <- sample(LETTERS, length, replace = TRUE)
    digits <- sample(0:9, length, replace = TRUE)
    special_chars <- sample(c("!", "@", "#", "$", "%", "_", "+", "-", ";", "'", "?", "/"), length, replace = TRUE)

    # Concatenate the character sets
    passwd <- c(lowercase_letters, uppercase_letters, digits, special_chars)

    # Shuffle the characters
    password <- paste(sample(passwd, length), collapse = "")
    return(password)
}

cat("Enter the length of the password : ")
length <- readline()

length <- as.numeric(length)
random_password <- genrate_rand_passwd(length)
# Print the random password
cat("Random Password:", random_password, "\n")
