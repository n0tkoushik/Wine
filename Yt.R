yt=read.csv(file.choose())
colnames(yt)
str(yt)
summary(yt)
head(yt)

yt[20:30,]
yt[,2:5]
yt[1:10,2:6]

yt[yt$subscribers > 10000000,]
yt[yt$Country=="India",]
yt[yt$Country=="India"& yt$subscribers>10000000,]

yt$Country <- factor(yt$Country)
yt$category <- factor(yt$category)
str(yt)

qplot(data=yt,x=subscribers,y=views,size=uploads,color="red",shape=I(21),
  alpha=I(0.8),main="YouTube Statistics Analysis")

ggplot(data=yt,aes(x=subscribers,y=views,
    size=I(4),color=I("red")))+geom_point()

ggplot(data=yt,aes(x=subscribers,y=views,
    size=uploads,color=Country))+geom_point()

ggplot(data=yt,aes(x=subscribers,y=views,color=Country))+
  geom_point()+geom_smooth(fill=NA)

ggplot(data=yt,aes(x=Country,y=subscribers,size=I(2),
    color=Country))+geom_boxplot()+geom_jitter()

ggplot(data=yt,aes(x=subscribers,y=views,color=Country))+
  geom_point()+geom_smooth(fill=NA)+facet_wrap(~category)