#import
movies=read.csv(file.choose())

# Mapping
ggplot(data=movies,aes(x=RottenTomatoesRatings,y=AudienceRatings,
                       size=Budget.million.,color=Genre))+geom_point()


#stats
# graphs 1
ggplot(data=movies,aes(x=RottenTomatoesRatings,y=AudienceRatings,
                       color=Genre))+geom_point()+geom_smooth(fill=NA)

# graphs 2

ggplot(data=movies,aes(x=Genre,y=AudienceRatings,size=I(2),
                       color=Genre))+geom_boxplot()+geom_jitter()


# Facets
#facet_grid(row~col)
ggplot(data=movies,aes(x=RottenTomatoesRatings,y=AudienceRatings,color=Genre))+
  geom_point()+geom_smooth(fill=NA)+facet_grid(Genre~Yearofrelease)


# Cordinates+ Themes
#coord_cartesian()  xlim   ylim
# ggtitle
ggplot(data=movies,aes(x=RottenTomatoesRatings,y=AudienceRatings,color=Genre))+
  geom_point()+geom_smooth(fill=NA)+facet_grid(Genre~Yearofrelease)+
  coord_cartesian(ylim=c(0,100))+ggtitle("HEADING HERE")
