

rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
} else if(x >= -1){
  answer <- "between -1 and 1"
} else{
  answer <- "less than -1"
}


rm(result)
x <- 35
if(x > 85){
  result <- "DISTINCTION"
} else if(x > 60){
  result <- "PASS"
} else{
  result <- "FAIL"
}
