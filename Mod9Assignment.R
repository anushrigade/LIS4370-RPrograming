library(ggplot2)
install.packages("lattice")
library(lattice)
install.packages("AER")
library(AER)

data("CASchools")
plot(CASchools$english, CASchools$read)


ggplot(CASchools, aes(x=english,y=read)) +
  geom_point(alpha=0.5, col="darkblue")

xyplot(read~english, data=CASchools, grid=TRUE)
