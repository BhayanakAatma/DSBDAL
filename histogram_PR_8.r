path <- "titanic.csv"

df = read.csv(path)

dt = df["Fare"]

dt <- dt[dt != "Fare"]

data <- c(dt)

png(file = "histogram.png")

hist(data, main = "Titanic", ylim = c(0, 200), col = "green", border = "red")

