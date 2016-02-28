##  Getting and Cleaning Data Course Project
##  Based on the Davide Anguitta and collegues pubblication "Human Activity 
##  Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
##  Vector Machine" in Ambient Assisted Living and Home Care, pp. 216- 223
##  Springer, Berlin, Germany, 2012.

##  This script merges a number of .txt files from the 'Human Activity 
##  Recognition Using Smartphones Dataset Version 1.0' and return a tidy dataset 
##  for future analysis

##  Load test data 
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
YTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
XTest <- read.table("./UCI HAR Dataset/test/X_test.txt") 
dim (subjectTest)
dim (YTest)
dim (XTest)

## Load training data
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
YTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt") 
dim (subjectTrain)
dim (YTrain)
dim (XTrain)

##  Load features and activity information data and name them
features <- read.table("./UCI HAR Dataset/features.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(features) <- c("featureId", "featureLabel")
names(activityLabels) <- c("activityId", "activityLabel")
dim(features)
dim(activityLabels)

##  Merge test, training and information data and name them
subjects <- rbind(subjectTest, subjectTrain)
X <- rbind(XTest, XTrain)
Y <- rbind(YTest, YTrain)
names(subjects) <- "subjectsId"
names(X) <- features$featureLabel
names(Y) <- "activityId"
dim(subjects)
dim(X)
dim(Y)
activities <- merge(Y, activityLabels, by = "activityId") 
data <- cbind(subjects, X, activities$activityLabel)
dim(data)

##  Extracts mean and std for each measurement and tidy rename them
tempData <- data[grepl("*mean|*std", names(data))]
selectedData <- cbind(subjects, tempData, activities[, 2])
dim(selectedData)
names(selectedData) <- gsub("^t", "time", colnames(selectedData))
names(selectedData) <- gsub("^f", "frequency", colnames(selectedData))
names(selectedData) <- gsub("Acc", "Accelerometer", colnames(selectedData))
names(selectedData) <- gsub("Gyro", "Gyroscope", colnames(selectedData))
names(selectedData) <- gsub("Mag", "Magnitude", colnames(selectedData))
names(selectedData) <- gsub("BodyBody", "Body", colnames(selectedData))
colnames(selectedData)[81] <- "activity"
write.table(selectedData, "mergedTidyData.txt")

##  Create a tidy dataset containg averages and standard deviations
library(data.table)
DT <- data.table(selectedData)
calculatedData <- DT[, lapply(.SD, mean), 
                               by = c("subjectsId", "activity")]
dim(calculatedData)
write.table(calculatedData, "calculatedTidyData.txt")
