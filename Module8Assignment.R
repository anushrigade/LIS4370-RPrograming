library(plyr)

studentTable <- read.table("C:/Users/anush/OneDrive/Desktop/R.Programming/LIS4370-RPrograming/Assignment 6 Dataset.txt", header=TRUE, sep=",")

StudentAverage = ddply(studentTable,"Sex",transform,Grade.Average=mean(Grade))

write.table(StudentAverage, "StudentAverages", sep=",")
newstudentTable = subset(studentTable,grepl("[iI]",studentTable$Name))
write.table(newstudentTable,"NewData",sep=",")
