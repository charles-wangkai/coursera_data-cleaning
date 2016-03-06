library(dplyr)

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

features <- as.character(read.table("UCI HAR Dataset/features.txt")[, 2])
extractIndices <- grep("-mean\\(\\)|-std\\(\\)", features)
features <- gsub("[-()]+", "_", features)

getDataSet <- function(type) {
  X <- read.table(paste0("UCI HAR Dataset/", type, "/X_", type, ".txt"), col.names = features)[extractIndices]
  
  y <- read.table(paste0("UCI HAR Dataset/", type, "/y_", type, ".txt"))
  activity <- merge(y, activityLabels, by = "V1", sort = FALSE)$V2
  
  subject <- read.table(paste0("UCI HAR Dataset/", type, "/subject_", type, ".txt"), col.names = "subject")
  
  cbind(subject, activity, X)
}

trainDataSet <- getDataSet("train")
testDataSet <- getDataSet("test")
mergedDataSet <- rbind(trainDataSet, testDataSet)
write.table(mergedDataSet, "mergedDataSet.txt", row.names = FALSE)

groupedDataSetWithAvg <- tbl_df(mergedDataSet) %>% group_by(subject, activity) %>% summarize_each(funs(mean))
write.table(groupedDataSetWithAvg, "groupedDataSetWithAvg.txt", row.names = FALSE)
