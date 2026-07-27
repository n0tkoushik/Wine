# data frames

#import
demo=read.csv(file.choose))

#factoring
demo$Incomegroup=factor(demo$Incomegroup)

# explore
str(demo)
summary(demo)

# analysis
# activate a package
# quick plot
# qplot(data, x,y,size,color)

qplot(data=demo, x=Birthrate, y=Internetusers)

qplot(data=demo, x=Birthrate, y=Internetusers,
      size=I(2), color=I("blue"))

qplot(data=demo,x=Birthrate,y=Internetusers,size=I
      (3),color=Incomegroup)

qplot(data=demo,x=Birthrate,y=Internetusers,size=Internetusers,colour=Internetusers)

qplot(data=demo,x=Birthrate,y=Internetusers,
      size=I(2),color=Incomegroup,shape=I(17),
      alpha=0.8,main="nandan")