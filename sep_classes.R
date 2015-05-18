library(readr)
df_train <- read_csv("train.csv")

for(i in 1:9)
{
  class_id <- sprintf("Class_%d", i)
  target <- df_train$target==class_id
  
  submission <- data.frame(df_train[, 1:93], target=target)
  file_name <- sprintf("train_%d.csv", i)
  write.csv(submission, file=file_name, row.names=FALSE, quote=FALSE)
}