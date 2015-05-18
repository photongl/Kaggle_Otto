library(readr)
library(glmnet)

df_train <- read_csv("train.csv")
df_test <- read_csv("test.csv")

y <- as.factor(df_train$target)
fit <- glm(data=df_train[,2:93], y ~ ., family="multinomial")
