# CODE BOOK - TIDY DATA PROJECT

Summary of data in tidy dataset week4cleaned.txt

There are 81 total features for each measurement. Two identifiers and 79 measurements.

To verify the contents of the tidy dataset, use these commands after running the run_analysis.R script:

~~~~
data <- read.table("week4cleaned.txt",header=TRUE)
head(data)
~~~~

# Identifiers

1. subject
1. activity
   1. WALKING = 1
   1. WALKING_UPSTAIRS = 2
   1. WALKING_DOWNSTAIRS = 3
   1. SITTING = 4
   1. STANDING = 5
   1. LAYING = 6
  
# Measurements

1. tBodyAccMeanX
1. tBodyAccMeanY
1. tBodyAccMeanZ
1. tBodyAccStdDevX
1. tBodyAccStdDevY
1. tBodyAccStdDevZ
1. tGravityAccMeanX
1. tGravityAccMeanY
1. tGravityAccMeanZ
1. tGravityAccStdDevX
1. tGravityAccStdDevY
1. tGravityAccStdDevZ
1. tBodyAccJerkMeanX
1. tBodyAccJerkMeanY
1. tBodyAccJerkMeanZ
1. tBodyAccJerkStdDevX
1. tBodyAccJerkStdDevY
1. tBodyAccJerkStdDevZ
1. tBodyGyroMeanX
1. tBodyGyroMeanY
1. tBodyGyroMeanZ
1. tBodyGyroStdDevX
1. tBodyGyroStdDevY
1. tBodyGyroStdDevZ
1. tBodyGyroJerkMeanX
1. tBodyGyroJerkMeanY
1. tBodyGyroJerkMeanZ
1. tBodyGyroJerkStdDevX
1. tBodyGyroJerkStdDevY
1. tBodyGyroJerkStdDevZ
1. tBodyAccMagMean
1. tBodyAccMagStdDev
1. tGravityAccMagMean
1. tGravityAccMagStdDev
1. tBodyAccJerkMagMean
1. tBodyAccJerkMagStdDev
1. tBodyGyroMagMean
1. tBodyGyroMagStdDev
1. tBodyGyroJerkMagMean
1. tBodyGyroJerkMagStdDev
1. fBodyAccMeanX
1. fBodyAccMeanY
1. fBodyAccMeanZ
1. fBodyAccStdDevX
1. fBodyAccStdDevY
1. fBodyAccStdDevZ
1. fBodyAccMeanFreqX
1. fBodyAccMeanFreqY
1. fBodyAccMeanFreqZ
1. fBodyAccJerkMeanX
1. fBodyAccJerkMeanY
1. fBodyAccJerkMeanZ
1. fBodyAccJerkStdDevX
1. fBodyAccJerkStdDevY
1. fBodyAccJerkStdDevZ
1. fBodyAccJerkMeanFreqX
1. fBodyAccJerkMeanFreqY
1. fBodyAccJerkMeanFreqZ
1. fBodyGyroMeanX
1. fBodyGyroMeanY
1. fBodyGyroMeanZ
1. fBodyGyroStdDevX
1. fBodyGyroStdDevY
1. fBodyGyroStdDevZ
1. fBodyGyroMeanFreqX
1. fBodyGyroMeanFreqY
1. fBodyGyroMeanFreqZ
1. fBodyAccMagMean
1. fBodyAccMagStdDev
1. fBodyAccMagMeanFreq
1. fBodyBodyAccJerkMagMean
1. fBodyBodyAccJerkMagStdDev
1. fBodyBodyAccJerkMagMeanFreq
1. fBodyBodyGyroMagMean
1. fBodyBodyGyroMagStdDev
1. fBodyBodyGyroMagMeanFreq
1. fBodyBodyGyroJerkMagMean
1. fBodyBodyGyroJerkMagStdDev
1. fBodyBodyGyroJerkMagMeanFreq






