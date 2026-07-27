# data frames

#import
demo=read.csv(file.choose())

# explore
str(demo)
summary(demo)

#factoring
demo$Incomegroup=factor(demo$Incomegroup)

#Analysiing data with qplot

#qplot(data,x,y,size,color,shape,alpha,main)

#q plot is layers of graph

#theme, coordinates, facets, statistics, geometrics, Aesthetics, data

#ggplot(data,aes(x,y,size,color))+geom+stats+facet+cord+theme

ggplot(data=demo,aes(x=Birthrate,y=Internetusers,
                     size=I(4),color=I("red")))+geom_point()

ggplot(data=demo,aes(x=Birthrate,y=Internetusers,
                     size=Birthrate,color=Incomegroup))+geom_point()


# data frames

#import
movies=read.csv(file.choose())

# explore
str(demo)
summary(demo)

#factoring
movies$Genre=factor(movies$Genre)
movies$Yearofrelease=factor(movies$Yearofrelease)

#Analysis using ggplot2

#Graph 1 - Setting - formatting

ggplot(data=movies,aes(x=Yearofrelease,y=AudienceRatings,
                       size=I(3),color=I("blue")))+geom_point()

#graph 2 - mapping column name only

ggplot(data=movies,aes(x=Yearofrelease,y=AudienceRatings,
                       size=Budget.million.,color=Genre))+geom_point()


#graph 3 - stats transformation
ggplot(data=movies,aes(x=Genre,y=AudienceRatings,size=I(3),
                       color=Genre))+geom_point()+geom_smooth(fill=NA)


#graph 4 - stats
ggplot(data=movies, aes(x=Genre, y=AudienceRatings, colour=Genre,
                        size=I(2))) + geom_jitter()

#facets
#facet_grid(row-col)
ggplot(data=movies,aes(RottenTomatoesRatings,y=AudienceRatings,color=Genre))+
  geom_point()+geom_smooth(fill=NA)+facet_grid(Genre~Yearofrelease)

# Cordinates+ Themes
#coord_cartesian()  xlim  ylim
# ggtitle
ggplot(data=movies, aes(x=Criticrating, y=Audiencerating, color=Genre)) +
  geom_point() + geom_smooth(fill=NA) + facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100)) + ggtitle("HEADING HERE")


