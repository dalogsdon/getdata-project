Tidy UCI HAR Dataset codebook
=============================

Full variable descriptions can be found in the `features_info.txt` file in the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The tidy dataset created by the [run_analysis script](./run_analysis.R) is formed from a subset of the original features. The feature subset consists of all "mean" and "std" features in the original data set. This subset was grouped by each combination of subject and activity, and the mean value of each feature in each group was added to the tidy dataset. The resulting set consists of 180 rows (one for each group) and 68 columns (subject, activity, and 66 features).

The columns in the tidy dataset are as follows:

1. subject - Participant ID
1. activity - Action performed
1. tBodyAcc-mean()-X
1. tBodyAcc-mean()-Y
1. tBodyAcc-mean()-Z
1. tBodyAcc-std()-X
1. tBodyAcc-std()-Y
1. tBodyAcc-std()-Z
1. tGravityAcc-mean()-X
1. tGravityAcc-mean()-Y
1. tGravityAcc-mean()-Z
1. tGravityAcc-std()-X
1. tGravityAcc-std()-Y
1. tGravityAcc-std()-Z
1. tBodyAccJerk-mean()-X
1. tBodyAccJerk-mean()-Y
1. tBodyAccJerk-mean()-Z
1. tBodyAccJerk-std()-X
1. tBodyAccJerk-std()-Y
1. tBodyAccJerk-std()-Z
1. tBodyGyro-mean()-X
1. tBodyGyro-mean()-Y
1. tBodyGyro-mean()-Z
1. tBodyGyro-std()-X
1. tBodyGyro-std()-Y
1. tBodyGyro-std()-Z
1. tBodyGyroJerk-mean()-X
1. tBodyGyroJerk-mean()-Y
1. tBodyGyroJerk-mean()-Z
1. tBodyGyroJerk-std()-X
1. tBodyGyroJerk-std()-Y
1. tBodyGyroJerk-std()-Z
1. tBodyAccMag-mean()
1. tBodyAccMag-std()
1. tGravityAccMag-mean()
1. tGravityAccMag-std()
1. tBodyAccJerkMag-mean()
1. tBodyAccJerkMag-std()
1. tBodyGyroMag-mean()
1. tBodyGyroMag-std()
1. tBodyGyroJerkMag-mean()
1. tBodyGyroJerkMag-std()
1. fBodyAcc-mean()-X
1. fBodyAcc-mean()-Y
1. fBodyAcc-mean()-Z
1. fBodyAcc-std()-X
1. fBodyAcc-std()-Y
1. fBodyAcc-std()-Z
1. fBodyAccJerk-mean()-X
1. fBodyAccJerk-mean()-Y
1. fBodyAccJerk-mean()-Z
1. fBodyAccJerk-std()-X
1. fBodyAccJerk-std()-Y
1. fBodyAccJerk-std()-Z
1. fBodyGyro-mean()-X
1. fBodyGyro-mean()-Y
1. fBodyGyro-mean()-Z
1. fBodyGyro-std()-X
1. fBodyGyro-std()-Y
1. fBodyGyro-std()-Z
1. fBodyAccMag-mean()
1. fBodyAccMag-std()
1. fBodyBodyAccJerkMag-mean()
1. fBodyBodyAccJerkMag-std()
1. fBodyBodyGyroMag-mean()
1. fBodyBodyGyroMag-std()
1. fBodyBodyGyroJerkMag-mean()
1. fBodyBodyGyroJerkMag-std()
