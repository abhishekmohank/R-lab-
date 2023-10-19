# Question 3: Data Validation and User Input

# Develop a program to read student records with their names, ages, and grades.
# Implement validation checks:
# a. Ensure age is a positive integer.
# b. Ensure grade is a valid letter grade (A, B, C, D, F).
# c. Calculate and display the average age of students with valid records.

file <- "./student.csv"
# Read the CSV file
student_data <- read.csv(file)

# Age check

age_check <- function(age) {
    return(age > 0)
}

# grade_check

grade_check <- function(grade) {
    return(grade %in% c("A", "B", "C", "D", "F"))
}



student_data$AgeCheck <- sapply(student_data$Age, age_check)
student_data$GradeCheck <- sapply(student_data$Grade, grade_check)


# Filter the data to keep only valid records
valid_records <- student_data[(student_data$AgeCheck & student_data$GradeCheck), ]


# Calculating the avg age
average_age_valid_records <- mean(valid_records$Age)

cat("\nStudent Data")
print(student_data)

cat("\nValid records")
print(valid_records)

cat("\nAvg Age of valid recs")
print(average_age_valid_records)
