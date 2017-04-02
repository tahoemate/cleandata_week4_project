# Week 4 Project - Cleaning Data
#
# Create script run_analysis.R that does the following.
#
# 0. Downloads and unzips data for processing.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

# Step 0.  
# Download from remote source to file week4_dataset.zip and unzip data to folder 'UCI HAR Dataset'.
# Use variable 

overwriteData <- FALSE   # set to TRUE to download data even if it exists (used to refresh data)
filename <- "week4_dataset.zip"  # 
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
folder <- "UCI HAR Dataset"   # data unzips to this folder

# helper func to build data filenames
getFullPath <- function( folder, filename) { 
  paste(folder,filename,sep="")
}

if (overwriteData | !file.exists(filename)) {
  # download.file(fileUrl, filename, method="curl")  # non-windows version
  download.file(fileUrl, filename)  
}

if (overwriteData | !file.exists(folder)) { 
  unzip(filename) 
}

# Step 1a.
# Load labels for features and activities. Use as.is to maintain characters strings.
# Reduce features labels to only those with mean or std in them.

# activities <- read.table(paste(folder,"/activity_labels.txt",sep=""),as.is=TRUE)
# features <- read.table(paste(folder,"/features.txt",sep=""),as.is=TRUE)
activities <- read.table(getFullPath(folder,"/activity_labels.txt"),as.is=TRUE)
features <- read.table(getFullPath(folder,"/features.txt"),as.is=TRUE)

featuresKeep <- grep(".*mean.*|.*std.*", features[,2])
featuresKeepNames <- features[featuresKeep,2]
featuresKeepNames = gsub('-mean', 'Mean', featuresKeepNames)
featuresKeepNames = gsub('-std', 'StdDev', featuresKeepNames)
featuresKeepNames <- gsub('[-()]', '', featuresKeepNames)

# Step 1b and Step 2.
# Load the datasets train and test.
# Reduce features to those containing mean or std
train <- read.table(paste(folder,"/train/X_train.txt",sep=""))
train <- train[featuresKeep]
trainActivities <- read.table(paste(folder,"/train/Y_train.txt",sep=""))
trainSubjects <- read.table(paste(folder,"/train/subject_train.txt",sep=""))
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table(paste(folder,"/test/X_test.txt",sep=""))
test <- test[featuresKeep]
testActivities <- read.table(paste(folder,"/test/Y_test.txt",sep=""))
testSubjects <- read.table(paste(folder,"/test/subject_test.txt",sep=""))
test <- cbind(testSubjects, testActivities, test)

# Step 1c. 
# Merge datasets and add labels.
combined <- rbind(train, test)
colnames(combined) <- c("subject", "activity", featuresKeepNames)

# Step 4. 
# Create descriptive labels by turning activities & subjects into factors
combined$activity <- factor(combined$activity, levels = activities[,1], labels = activities[,2])
combined$subject <- as.factor(combined$subject)

# Step 5
# Create mean for each activity and subject and save data.
combinedMelted <- melt(combined, id = c("subject", "activity"))
combinedMean <- dcast(combinedMelted, subject + activity ~ variable, mean)

outfile <- "week4cleaned.txt"
write.table(combinedMean, outfile, row.names = FALSE, quote = FALSE)

cat("Complete. Created File: ", outfile)


