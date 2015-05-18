library(readr)
library(kernlab)

df_train <- read_csv("train.csv")
df_test <- read_csv("test.csv")

# create SVMs for different classes
x1 <- data.matrix(df_train[,2:93])
y1 <- as.factor(data.matrix(df_train$target))


fit <- ksvm(x, y, kernel="vanilladot")