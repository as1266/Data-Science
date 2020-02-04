setwd('/Users/anime/Documents/Data science')
adults<- read.csv('Adults_Cleaned.csv')

head(adults)
nrow(adults[adults$education.num==13,])
nrow(adults[adults$education =='Bachelors',])
nrow(adults[adults$label==">50k",]) 
#as.character(adults$label)
#head(adults[adults$label==">50k",]) 
more50work40 <- nrow(adults[(adults$hours.per.week >= 40) & (adults$label == ">50K"),])
percent<-more50work40/nrow(adults)*100
print(percent)

summary(adults$hours.per.week)

#as.character(adults$label)
