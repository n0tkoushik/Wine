# for loop
#for (variable in sequence) {
# code to repeat
#}

for (i in 1:5) {
  print(i)
}
# Output: 1 2 3 4 5

fruits <- c("apple", "banana", "mango")

for (fruit in fruits) {
  print(fruit)
}
# Output: apple  banana  mango

#while (condition) {
# code to repeat
#}

x <- 1

while (x <= 5) {
  print(x)
  x <- x + 1       # important: update x, or loop runs forever
}
# Output: 1 2 3 4 5


rmarks <- 72

if (marks >= 90) {
  print("Grade: A")
} else if (marks >= 75) {
  print("Grade: B")
} else if (marks >= 60) {
  print("Grade: C")
} else {
  print("Grade: F")
}

# Output: "Grade: C"

x <- 10

if (x > 5) {
  print("x is greater than 5")
}


x <- 3

if (x > 5) {        # checks: is 3 > 5? → FALSE
  print("x is greater than 5")   # ❌ skipped
}

# Output: nothing printed
