# Lab cycle question 1
#Question 1: Data Types and Manipulation
#Develop a program to read a paragraph of text and perform the following tasks:
#a. Count the total number of words.
#b. Calculate the average word length.
#c. Identify and print the longest word.
#d. Replace all occurrences of a specific word with another word of your choice.

# Reading a paragraph

para <- readline("Enter your paragraph : ")
sprintf("Read paragraph: %s", para)

# Counting the number of words
num_words <- lengths(strsplit(para, " "))
sprintf("Number of words %x", num_words)
words <- strsplit(para, "[[:space:]]")

# Calculate the total number of characters in all words
total_characters <- sum(nchar(words))

# Calculate the total number of words
total_words <- length(words)

# Calculate the average word length
average_word_length <- total_characters / total_words

# Print the result
cat("Average word length:", average_word_length, "\n")

# Identifying the longest word
word_array