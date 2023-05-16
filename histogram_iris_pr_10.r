path <- "iris.csv"

df = read.csv(path)

dt = df["petal.width"]

dt <- dt[dt != "petal.width"]

data <- c(dt)

png(file = "histogram_iris.png")

hist(data, main = "Iris", ylim = c(0, 200), col = "green", border = "red")
