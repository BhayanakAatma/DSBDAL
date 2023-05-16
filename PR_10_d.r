path <- "iris.csv"

df <- read.csv(path)

a <- df["petal.length"]
b <- df["petal.width"]

PL <- a[a != "petal.length"]

PW <- b[b != "petal.width"]



relation <- lm(PW ~ PL)

png(file = "PR_10_D.png")

plot(PW, PL, col = "blue", abline(lm(PL ~ PW)))
