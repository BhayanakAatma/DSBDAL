path <- "titanic.csv"

df = read.csv(path)

data <- c(df["Age"], df["Sex"])

png(file="box_plot.png")

boxplot(Age ~ Sex, data, xlab = "Sex", ylab = "Age", main = "Titanic", col = "cyan", notch = TRUE)

