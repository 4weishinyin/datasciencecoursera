#
##  download zipped data file for the project
#
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./UCI HAR Dataset")) { dir.create("./UCI HAR Dataset")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileDest <- "./UCI HAR Dataset/UCI HAR Dataset.zip"
download.file (fileURL, destfile=fileDest, method="curl")
dateDownloaded <- date()
dateDownloaded
#
##  unzip file
#
unzip(fileDest)
list.files("./UCI HAR Dataset", recursive=TRUE)
#
#   Note that the Inertial Signals related files are being excluded from this analysis
#
##  read the following files into R: 
##  the features.txt contains 561 rows of the feature identifiers (rage: 1-561) and the corresponding names
#
if(!exists("features")) {
        features <- read.table("./UCI HAR Dataset/features.txt", sep = " ", stringsAsFactors = FALSE)}
#dim(features)

##  the activity_labels.txt contains 6 rows of the activity identifiers (range: 1-6) and the corresponding labels
#
if(!exists("activity_labels")) {
        activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = " ", stringsAsFactors = FALSE)}
#dim(activity_labels)

##   the subject_test.txt contains 2947 rows of the subject identifiers (range: 1-30) who carried out the experiment for the test set
# 
if(!exists("subject_test")) {
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = " ", stringsAsFactors = FALSE, fill = TRUE)}
#dim(subject_test)

##   the y_test.txt contains 2947 rows of the activity identifiers (range: 1-6) being carried out for the test set experiment
# 
if(!exists("y_test")) {
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = " ", stringsAsFactors = FALSE, fill = TRUE)}
#dim(y_test)

##  the X_test.txt contains 2974 rows of the 561-feature measurements for the test set
#
if(!exists("X_test")) {
        X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE, fill = TRUE)}
#dim(X_test)

#
##   the subject_train.txt contains 7352 rows of the subject identifiers (range: 1-30) who carried out the experiment for the training set
# 
if(!exists("subject_train")) {
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = " ", stringsAsFactors = FALSE, fill = TRUE)}
#dim(subject_train)

##   the y_train.txt contains 7352 rows of the activity identifiers (range: 1-6) being carried out for the training set experiment
# 
if(!exists("y_train")) {
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = " ", stringsAsFactors = FALSE, fill = TRUE)}
#dim(y_train)


##  the X_train.txt contains 7352 rows of the 561-feature measurements for the training set
#
if(!exists("X_train")) {
        X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE, fill = TRUE)}
#dim(X_train)

#
##  proj step 3: Uses descriptive activity names from the activity_labels to name the activities in the data set
#
library("plyr")
y_testDesc <- join(y_test, activity_labels)
y_trainDesc <- join(y_train, activity_labels)

##  combine the subject identifier and the activity names into the dataset 
# 
testComb<- cbind(subject_test, y_testDesc[2], X_test) 
trainComb<- cbind(subject_train, y_trainDesc[2], X_train) 

#
##  proj step 1: merges the training and the test sets to create one data set
#
mergedComb <- rbind(testComb, trainComb)

#  replace mergedComb column names Vx (x = 1:561) with the generic feature names 
#
colnames(mergedComb) <- c("Subject", "Activity", features$V2) 

#
##  proj step 2: extracts only the measurements on the mean and standard deviation for each measurement
#                but excludes features contain "angle", "meanFreq", and "BodyBody"
#
library("dplyr")
merged_tbldf <- tbl_df(mergedComb)
#finalSet <- select(merged_tbldf, Subject, Activity, contains("mean"), contains("std"), -contains("BodyBody"),-contains("angle"), -contains("meanFreq"))
finalSet <- select(merged_tbldf, Subject, Activity, contains("mean"), contains("std"), -contains("angle"), -contains("meanFreq"))

#
##  proj step 4: appropriately labels the data set with descriptive variable names
#
names(finalSet) <- sub("BodyBody", "Body", names(finalSet))
names(finalSet) <- sub("^[t]", "Time", names(finalSet))
names(finalSet) <- sub("^[f]", "Frequency", names(finalSet))
names(finalSet) <- sub("Gyro", "Gyroscope", names(finalSet))
names(finalSet) <- sub("Acc", "Accelerometer", names(finalSet))
names(finalSet) <- sub("Mag", "Magnitude", names(finalSet))
names(finalSet) <- gsub("[(,)]", "", names(finalSet))
names(finalSet) <- gsub("-mean([-])?", "Mean", names(finalSet))
names(finalSet) <- gsub("-std([-])?", "StandardDeviation", names(finalSet))
#str(finalSet)
#
##  proj step 5: from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#

finalOut <- ddply(finalSet, .(Activity, Subject), numcolwise(mean))
write.table(finalOut, file="./FinalData.txt", row.name=FALSE)
#
#Acronym version for better display the data on screen
acro <- finalOut
names(acro) <- gsub("[a-z]", "", names(acro))
colnames(acro)[[1]] <- "Activity"
colnames(acro)[[2]] <- "Subject"
write.table(acro, file="./FinalDataAcronym.txt", row.name=FALSE)