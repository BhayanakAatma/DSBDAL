df = read.csv("C:/Users/HP/OneDrive/Desktop/DSBDA Pracicals/Shashank Pathak/wine.csv")

var1 <- length(df["Nonflavanoid.phenols"])
var2 <- length(df["Malic.acid"])

logistic_model <- glm(var1 ~ var2, data = df, family = binomial)
Predicted_data <- data.frame(var2= seq(
    min(df[var2]), max(df[var2]), len=500
))

Predicted_data$var1 = predict(
    logistic_model, Predicted_data, type="response"
)

plot(var1 ~ var2, data = df)
lines(var1 ~ var2, Predicted_data, lwd = 2, col="green")