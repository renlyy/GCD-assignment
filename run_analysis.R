#Load package
library(tidyr)
library(dplyr)

#Download source file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "project.zip")

#Unzip the zip file
unzip("project.zip")

#Check what kind of files in it
filecheck <- list.files(path = "UCI HAR Dataset/", recursive = TRUE)

#Read feature names
feature <- read.table("UCI HAR Dataset/features.txt")

#Subset the data we need
feature <- as.character(feature$V2)

#Read measured data
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Attach feature names with data
colnames(xtest) <- feature
colnames(xtrain) <- feature

#Merge test data
xtest$activity <- ytest$V1 #Shows which activity it is (1~6)
xtest$subject <- subtest$V1 #Shows who was the subject of test (1~30)

#Merge the train data
xtrain$activity <- ytrain$V1 #Shows which activity it is (1~6)
xtrain$subject <- subtrain$V1 #Shows who was the subject of test (1~30)

#Merge test and train data
merged <- rbind(xtest, xtrain)

#Select only mean and std data with activity, subject, type
select <- c(grep(("mean\\(\\)|std\\(\\)"), feature, value = TRUE), "activity", "subject")
findata <- subset(merged, select = select)

#Replace activity names to descriptive names
actlabel <- read.table("UCI HAR Dataset/activity_labels.txt")
actlabel <- tolower(as.character(actlabel$V2)) #Change characters to lower cases
findata$activity <-actlabel[findata$activity]

#Appropriately labels the data set with descriptive variable names
names(findata) <- gsub("^t", "time", names(findata))
names(findata) <- gsub("*Acc*", "Acceleration", names(findata))
names(findata) <- gsub("*Mag*", "Magnitude", names(findata))
names(findata) <- gsub("*Gyro*", "Gyroscope", names(findata))
names(findata) <- gsub("^f", "frequency", names(findata))
names(findata) <- gsub("*(Body)+\1*", "Body", names(findata))
names(findata) <- gsub("-mean\\(\\)", "Mean", names(findata))
names(findata) <- gsub("-std\\(\\)", "SD", names(findata))

#Create a tidy data set with the average of each variable for each activity and each subject
tidydata <- arrange(findata, subject, activity) %>% 
            group_by(subject, activity) %>% 
            summarise_each(funs(mean))

#Write table to text file
write.table(tidydata, file = "tidydata.txt", row.names = FALSE)
