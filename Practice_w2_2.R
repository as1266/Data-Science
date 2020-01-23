course.grades<-c(76,97,68,92,88,56,90,8)
course.grades

students <-c('A','B','C','D','E','F','G','H')
names(course.grades)<- students
course.grades
min(course.grades)

grade.range<-cut(course.grades,3)
table(grade.range)
summary(course.grades)
course.grades[course.grades<60]