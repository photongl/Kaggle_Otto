library(nnet)
library(readr)

x <- df_train[,2:93]
y <- class.ind(as.numeric(as.factor(df_train$target)))

fit <- nnet(x, y, size=5, maxit=1000, MaxNWts=10000, softmax=TRUE)