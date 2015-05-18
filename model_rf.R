library(randomForest)
library(readr)

df_train <- read_csv("train.csv")
df_test <- read_csv("test.csv")


model_list_rf <- list(9)

x <- data.matrix(df_train[,2:93])
y <- as.factor(df_train$target)
model.rf <- randomForest(y ~ .,
                          data=x,
                          mtry=1,
                          ntree=1)