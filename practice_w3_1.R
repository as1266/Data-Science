#Animesh Siwakoti 
#Practice 1 Lists with vectors of different types
vector<-list(x=1:5, y=c('a','b'), z=c('this is a string'))#create a list with vectors x y and z

str(vector[[3]])#gets the type of vector and the content 

str(vector[[2]])#gets the type of vector and content 

str(vector$x[2])

##################################################################
#Practice 2

Name <- c("Bob","Bill","Cody","Tom")

Test1 <- c(80,75,92,95)

Test2 <- c(76,89,78,90)

grades.df <- data.frame(Name,Test1, Test2 )

grades.df['Test1']#Get the grade of Test1 of all students 

grades.df[2,'Test2']#Get the grade of Test2 of Bill 

##################################################################
#Practice 3 Importing data
read.csv(file="/Users/anime/Documents/Data science/Adults.csv", header= FALSE, sep=",")

setwd("/Users/anime/Documents/Data science")# set working directory
adults<- read.csv('Adults.csv') #set adults to the adults.csv file

nrow(adults)#checks the number of rows in the dataset
View(adults)#makes a view of the table
ncol(adults)#checks the number of coloumns in the dataset
adults[[2]]
adults[,2]
head(adults,10)#checks the first 10 
str(adults)#gets the data types of each column
summary(adults)#Get a summary of the data 
