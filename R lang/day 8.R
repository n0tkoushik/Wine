# data frames
# import dataset
demo=read.csv(file.choose())

# Explore - str - summary
# Dollars - extract - cal - add col - delete col

# subsetting [row,col]

#Filtering in data frames
# [row,col] , logics and dollars

a=demographics[demographics$Birthrate>30,]

b=movie[movie$AudienceRatings<50, ]

c = regions[regions$Regions == "Asia", ]

#to delete the sheet
# use rm( name of sheet )
# ex rm(a) delete sheet a

# Factoring in dataframes

summary(demographics)

demographics=Incomegroup=factor(demographics$Incomegroup)

demo=read.csv(file.choose())

summary(demo)

demo$Incomegroup=factor(demo$Incomegroup)

summary(demo)










