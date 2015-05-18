library(readr)
N = 144368

list_df_predict <- list()
submission_prob <- data.frame(id=1:N)
output <- matrix(rep(0, N*9), N, 9)

for(i in 1:9)
{
  file_name <- sprintf("pred_rf_%d.csv", i)
  list_df_predict[[i]] <- read_csv(file_name)
  class_name <- sprintf("Class_%d", i)
  submission_prob <- cbind(submission_prob, category=list_df_predict[[i]]$`TRUE`)
}

for(i in 1:N)
{
  output[i, which.max(submission_prob[i, 2:10])] <- 1
}

submission <- data.frame(id = submission_prob$id, output)
write.csv(submission, file="submission.csv", row.names=FALSE, quote=FALSE)