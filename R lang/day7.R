demo=read.csv(file.choose())

#Functions - Formulas in Excel
#pacakages in r 
# Inbuilt Packages - base Packages
#Download and install - CRAN - 5000+

#install a package
#activate a package
#package is a collection of functions(formulas)

ggplot2
caTools
zoo

#explore data str() summary()

str(demographics)
summary(demographics)


str(movie)
summary(movie)

str(regions)
summary(regions)


#how to extract data from data frame
# subsetting [row,col]

a=demographics[1:5,1:3]

b=demographics[1:50,]

c=demographics[,3:5]

#dollars - extract whole coloumn
demographics$Incomegroup
demographics$Birthrate

#calulations
demographics$Birthrate + demographics$Internetusers
demographics$Birthrate - demographics$Internetusers

#add coloumns
demographics$profit=demographics$Birthrate + demographics$Internetusers
demographics$loss=demographics$Birthrate - demographics$Internetusers

#delete coloums

demographics$profit=NULL
demographics$loss=NULL

