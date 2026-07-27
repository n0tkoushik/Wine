# 1. Importing
# 2. Importing the dataset

hr = read.csv(file.choose())

# 3. Display the first few rows of the dataset.
# Display rows

hr[1:6, ]

# 4. Explore 
# 5. Explore the structure and summary of the dataset using appropriate R functions.

# Structure 
str(hr)

# Summary
summary(hr)

# 7. Data Frame Operations

# Perform basic data frame operations 

# 8.1 Selecting columns
a = hr[1:10, 1:3]

# 8.2 Adding a new column
hr$total_rate = hr$DailyRate + hr$MonthlyRate

# 8.3 Renaming column
hr$combined_rate = hr$total_rate

# 8.4 Deleting a column
hr$total_rate = NULL

# 9. Subsetting

# 9.1 Subsetting rows and columns
b = hr[1:10, 1:4]

# 9.2 Extract specific records and variables using indexing

# Extracting rows
c = hr[50:60, ]

# Extracting columns
d = hr[, 2:4]

# 12. Filters

# 13. Apply different filtering conditions to retrieve required observations.

f1 = hr[hr$Attrition == "Yes", ]

f2 = hr[hr$Age > 40, ]

f3 = hr[hr$MonthlyIncome < 3000, ]

# 14. Use single and multiple conditions for filtering the dataset

# Single condition

f4 = hr[hr$Gender == "Female", ]

# Multiple conditions
f5 = hr[hr$Attrition == "Yes" & hr$Age > 40, ]

# qplot
qplot(data=hr, x=Age, y=MonthlyIncome,
      size=I(2), color=I("blue"))

qplot(data=hr, x=Age, y=MonthlyIncome,
      size=I(2), color=Attrition, shape=I(17),
      alpha=0.8, main="HR Attrition Dataset")
