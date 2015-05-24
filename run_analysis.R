##You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
##Download data into working directory.
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url, destfile = "./UCI HAR Dataset.zip", method = "curl")
##Unzip and extract folder.
unzip("UCI HAR Dataset.zip", exdir = "./")
##Read files and dimensions.
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
dim(subject_test); dim(X_test); dim(y_test); dim(subject_train); dim(X_train); dim(y_train)

##Rename columns with rename(package:dplyr).
library(dplyr)
subject_test <- rename(subject_test, subject = V1)
y_test <- rename(y_test, activity = V1)
subject_train <- rename(subject_train, subject = V1)
y_train <- rename(y_train, activity = V1)

##Bind columns with bind_rows() from package:dplyr.
test <- bind_cols(subject_test, y_test, X_test)
train <- bind_cols(subject_train, y_train, X_train)

##Add a new variable "group" with two levels, "train" and "test".
test <- mutate(test, group = "test")
train <- mutate(train, group = "test")

##Move the group variable to the 2nd column.
test <- test[ , c(1, 564, 2:563)]
train <- train[ , c(1, 564, 2:563)]
##Check datasets.
head(test[,1:10],3)
head(train[,1:10],3)

##Combine datasets.
activity_recognition <- bind_rows(test, train)

##Find mean() and std() columns.

##Rename measurement variables (i.e., change the V1, V2, V3...)
##Read features.txt, which has all the variable names of the measurements.
features <- read.table("./UCI HAR Dataset/features.txt")
##Extract the variable names from "features" into a character vector.
features$V2 <- as.character(features$V2)
##Rename the measurement variable labels.
colnames(activity_recognition)[4:564] <- features$V2
##Find position of variables with "mean()" and std() in the name.
mean_pos <- grep("mean()", features$V2)
std_pos <- grep("std()", features$V2)
##Combine vectors to include all positions for mean and standard deviation measurments.
all_pos <- c(mean_pos, std_pos)
##Add 3 positions to all values in the "all_pos" vector 
##to account for the first three variables in "activity_recognition.
all_pos <- all_pos + 3
##Create new dataset with only the mean and standard deviation measures.
data <- activity_recognition[, c(1,2,3,all_pos)]
##Check dataset.
head(data[,1:10],5)
dim(data)

##Rename the values of the "activity" variable to indicate what they actually are.
##Read activity_labels.txt, which has all the names of the levels of "activity".
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
##Extract the labels from "act_labels" into a character vector.
act_labels$V2 <- as.character(act_labels$V2)
##Use mapvalues() (package:plyr) to relabel the values for the "activity" variable of "data".
library(plyr)
data$activity <- mapvalues(data$activity, from = c(1,2,3,4,5,6), to = act_labels$V2)
head(data[,1:10],10)

##Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##Group the data by "activity" then "subject".
detach(package:plyr)
library(dplyr)
tidy_summary <- group_by(data, activity, subject)
##Use summarise_each() (package:dplyr) to calculate the means of all measurements for each combination of the grouped variables.
tidy_summary <- summarise_each(tidy_summary, funs(mean), -group)
head(tidy_summary[,1:10],10)
dim(tidy_summary)

##Write the tidy dataset to file.
write.table(tidy_summary, file = "./tidy_dataset", row.names = FALSE)
