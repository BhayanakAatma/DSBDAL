path <- "C:/Users/HP/OneDrive/Desktop/DSBDA Pracicals/Shashank Pathak/wine.csv"

contents <- read.csv(path)

a = contents[, c(2)]
b = contents[, c(3)]

relation <- lm(b~a)

png(file = "linearRegression.png")

plot(b, a, col = "blue", abline(lm(a~b)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")