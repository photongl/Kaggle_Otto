success <- (predict(fit, df_train[,2:93], type="class")==as.numeric(as.factor(df_train$target)))
success_rate <- length(success[success==TRUE]) / length(success)

predictions <- as.numeric(as.factor(predict(fit, df_test[,2:93], type="class")))

output <- matrix(rep(0, length(predictions)*9), length(predictions), 9)

for(i in 1:length(predictions))
{
  output[i,predictions[i]] <- 1
}
submission <- data.frame(id = df_test$id, output)
write.csv(submission, file="submission_nn.csv", row.names=FALSE, quote=FALSE)