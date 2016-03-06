* Variables
	1. subject
    1. activity
    1. tBodyAcc_mean_X
    1. tBodyAcc_mean_Y
    1. tBodyAcc_mean_Z
    1. tBodyAcc_std_X
    1. tBodyAcc_std_Y
    1. tBodyAcc_std_Z
    1. tGravityAcc_mean_X
    1. tGravityAcc_mean_Y
    1. tGravityAcc_mean_Z
    1. tGravityAcc_std_X
    1. tGravityAcc_std_Y
    1. tGravityAcc_std_Z
    1. tBodyAccJerk_mean_X
    1. tBodyAccJerk_mean_Y
    1. tBodyAccJerk_mean_Z
    1. tBodyAccJerk_std_X
    1. tBodyAccJerk_std_Y
    1. tBodyAccJerk_std_Z
    1. tBodyGyro_mean_X
    1. tBodyGyro_mean_Y
    1. tBodyGyro_mean_Z
    1. tBodyGyro_std_X
    1. tBodyGyro_std_Y
    1. tBodyGyro_std_Z
    1. tBodyGyroJerk_mean_X
    1. tBodyGyroJerk_mean_Y
    1. tBodyGyroJerk_mean_Z
    1. tBodyGyroJerk_std_X
    1. tBodyGyroJerk_std_Y
    1. tBodyGyroJerk_std_Z
    1. tBodyAccMag_mean_
    1. tBodyAccMag_std_
    1. tGravityAccMag_mean_
    1. tGravityAccMag_std_
    1. tBodyAccJerkMag_mean_
    1. tBodyAccJerkMag_std_
    1. tBodyGyroMag_mean_
    1. tBodyGyroMag_std_
    1. tBodyGyroJerkMag_mean_
    1. tBodyGyroJerkMag_std_
    1. fBodyAcc_mean_X
    1. fBodyAcc_mean_Y
    1. fBodyAcc_mean_Z
    1. fBodyAcc_std_X
    1. fBodyAcc_std_Y
    1. fBodyAcc_std_Z
    1. fBodyAccJerk_mean_X
    1. fBodyAccJerk_mean_Y
    1. fBodyAccJerk_mean_Z
    1. fBodyAccJerk_std_X
    1. fBodyAccJerk_std_Y
    1. fBodyAccJerk_std_Z
    1. fBodyGyro_mean_X
    1. fBodyGyro_mean_Y
    1. fBodyGyro_mean_Z
    1. fBodyGyro_std_X
    1. fBodyGyro_std_Y
    1. fBodyGyro_std_Z
    1. fBodyAccMag_mean_
    1. fBodyAccMag_std_
    1. fBodyBodyAccJerkMag_mean_
    1. fBodyBodyAccJerkMag_std_
    1. fBodyBodyGyroMag_mean_
    1. fBodyBodyGyroMag_std_
    1. fBodyBodyGyroJerkMag_mean_
    1. fBodyBodyGyroJerkMag_std_

<br />

* Transformations
    1. Appropriately labels the data set with descriptive variable names. (Replace consecutive "-", "(", ")" with "_")
    1. Extracts only the measurements on the mean and standard deviation for each measurement. (Only extract variables whose names contain "-mean()" or "-std()")
    1. Uses descriptive activity names to name the activities in the data set. (Join y and activity_labels tables)
    1. Merges the training and the test sets to create one data set. (Combine by rows)
    1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (Use dplyr package, group by subject and activity, then call summarize_each() with mean function)