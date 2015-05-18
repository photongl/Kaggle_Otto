library(readr)
predictions <- read_csv("pred_gbm.csv")
vals <- as.numeric(as.factor(predictions$predict))

output <- matrix(rep(0, nrow(predictions)*9), nrow(predictions), 9)

for(i in 1:nrow(predictions))
{
  output[i,vals[i]] <- 1
}
submission <- data.frame(id = 1:144368, output)
write.csv(submission, file="submission_gbm.csv", row.names=FALSE, quote=FALSE)