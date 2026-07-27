# 1. Importing
# 2. Importing the dataset

netflix = read.csv(file.choose())

# 3. Display the first few rows of the dataset.
# Display rows
netflix[1:6, ]

# 4. Explore 
# 5. Explore the structure and summary of the dataset using appropriate R functions.

# Structure 
str(netflix)

# Summary 
summary(netflix)

# Display dimensions, column names, data types, and summary statistics.

# 7. Data Frame Operations

# Perform basic data frame operations 

# 8.1 Selecting columns
a = netflix[1:10, 1:3]

# 8.2 Adding a new column
netflix$new_col = netflix$release_year + netflix$release_year

# 8.3 Renaming column
netflix$double_year = netflix$new_col

# 8.4 Deleting a column
netflix$description = NULL

# 9 Subsetting

# 9.1 Subsetting rows and columns
b = netflix[1:10, 1:4]

# 9.2 Extract specific records and variables using indexing or appropriate R functions.

# Extracting rows
c = netflix[50:60, ]

# Extracting columns
d = netflix[, 2:4]

# 12 Filters

# 13 Apply different filtering conditions to retrieve required observations.

f1 = netflix[netflix$type == "Movie", ]

f2 = netflix[netflix$release_year > 2015, ]

f3 = netflix[netflix$release_year < 2000, ]

# 14 Use single and multiple conditions for filtering the dataset

# Single condition

f4 = netflix[netflix$country == "India", ]

# Multiple conditions
f5 = netflix[netflix$type == "Movie" & netflix$release_year > 2015, ]

# qplot

qplot(data=netflix, x=release_year, y=double_year,
      size=I(2), color=I("blue"))

qplot(data=netflix, x=release_year, y=double_year,
      size=I(2), color=type, shape=I(17),
      alpha=0.8, main="Netflix Dataset")