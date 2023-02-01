frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
first <- c(1,1,1,1,0,0,0,0,NA,1)
second <- c(0,0,1,1,0,0,1,1,1,1)
finalDecision <- c(0,1,0,1,0,1,0,1,1,1)


patientData <- data.frame(frequency, BP, first, second, finalDecision)
patientdata.new <- na.omit(patientData)

boxplot(patientdata.new)

hist(patientdata.new$BP)
hist(patientdata.new$first)
hist(patientdata.new$second)
hist(patientdata.new$finalDecision)
hist(patientdata.new$frequency)

#Mean of final decision ratings
mean(patientdata.new$finalDecision)
