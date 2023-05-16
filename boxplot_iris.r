path <- "iris.csv"

df = read.csv(path)

data <- c(df["sepal.length"], df["petal.width"])

png(file="box_plot.png")

boxplot(sepal.length ~ petal.width, data, xlab = "petal.width", ylab = "sepal.length", main = "iris", col = "cyan")
