# Script which organises fitness data collected with a Samsung Galaxy S
#  for various subjects doing various activities

# Collects data from six files in total: Subjects, activities
# and data for both training and test sets.

# Selects mean and standard deviation for each measurement.
# Merges training data and test data together.
# Convert activity data from integers to descriptive names.
# Label data set with descriptive names.
# Write data set to a file.

## Specify the columns from the measurement files
measurement_cols<-c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                    240:241,253:254,266:271,345:350,424:429,503:504,516:517,
                    529:530,542:543)

## Measurement Names for the corresponding columns
measurement_names<-c(
    "tBodyAcc-mean-X",
    "tBodyAcc-mean-Y",
    "tBodyAcc-mean-Z",
    "tBodyAcc-std-X",
    "tBodyAcc-std-Y",
    "tBodyAcc-std-Z",
    "tGravityAcc-mean-X",
    "tGravityAcc-mean-Y",
    "tGravityAcc-mean-Z",
    "tGravityAcc-std-X",
    "tGravityAcc-std-Y",
    "tGravityAcc-std-Z",
    "tBodyAccJerk-mean-X",
    "tBodyAccJerk-mean-Y",
    "tBodyAccJerk-mean-Z",
    "tBodyAccJerk-std-X",
    "tBodyAccJerk-std-Y",
    "tBodyAccJerk-std-Z",
    "tBodyGyro-mean-X",
    "tBodyGyro-mean-Y",
    "tBodyGyro-mean-Z",
    "tBodyGyro-std-X",
    "tBodyGyro-std-Y",
    "tBodyGyro-std-Z",
    "tBodyGyroJerk-mean-X",
    "tBodyGyroJerk-mean-Y",
    "tBodyGyroJerk-mean-Z",
    "tBodyGyroJerk-std-X",
    "tBodyGyroJerk-std-Y",
    "tBodyGyroJerk-std-Z",
    "tBodyAccMag-mean",
    "tBodyAccMag-std",
    "tGravityAccMag-mean",
    "tGravityAccMag-std",
    "tBodyAccJerkMag-mean",
    "tBodyAccJerkMag-std",
    "tBodyGyroMag-mean",
    "tBodyGyroMag-std",
    "tBodyGyroJerkMag-mean",
    "tBodyGyroJerkMag-std",
    "fBodyAcc-mean-X",
    "fBodyAcc-mean-Y",
    "fBodyAcc-mean-Z",
    "fBodyAcc-std-X",
    "fBodyAcc-std-Y",
    "fBodyAcc-std-Z",
    "fBodyAccJerk-mean-X",
    "fBodyAccJerk-mean-Y",
    "fBodyAccJerk-mean-Z",
    "fBodyAccJerk-std-X",
    "fBodyAccJerk-std-Y",
    "fBodyAccJerk-std-Z",
    "fBodyGyro-mean-X",
    "fBodyGyro-mean-Y",
    "fBodyGyro-mean-Z",
    "fBodyGyro-std-X",
    "fBodyGyro-std-Y",
    "fBodyGyro-std-Z",
    "fBodyAccMag-mean",
    "fBodyAccMag-std",
    "fBodyBodyAccJerkMag-mean",
    "fBodyBodyAccJerkMag-std",
    "fBodyBodyGyroMag-mean",
    "fBodyBodyGyroMag-std",
    "fBodyBodyGyroJerkMag-mean",
    "fBodyBodyGyroJerkMag-std"
    )

## Descriptive labels for the data set
col_names<-c("Subject","Activity",measurement_names) 

# unzipped data is in the following directory
datadir<-"UCI HAR Dataset"

## Get training data (Step 2)
### read data from file
rawdata<-read.table(file=file.path(datadir,"train","X_train.txt"))
activities<-read.table(file=file.path(datadir,"train","y_train.txt"))
subjects<-read.table(file=file.path(datadir,"train","subject_train.txt"))
### extract required measurements
training<-cbind(subjects,activities,rawdata[,measurement_cols])

## Get testing data (Step 2)
### read data from file
rawdata<-read.table(file=file.path(datadir,"test","X_test.txt"))
activities<-read.table(file=file.path(datadir,"test","y_test.txt"))
subjects<-read.table(file=file.path(datadir,"test","subject_test.txt"))
### extract required measurements
testing<-cbind(subjects,activities,rawdata[,measurement_cols])
### remove objects no longer required
rm(rawdata,activities,subjects)

## merge training and testing data (Step 1)
step4<-rbind(testing,training)
## remove objects no longer required
rm(testing,training)

## Rename the columns with descriptive labels (Step 4)
colnames(step4)<-col_names

## Convert activity data from integers to descriptive names (Step 3)
step4[step4$Activity=="1","Activity"]<-"WALKING"
step4[step4$Activity=="2","Activity"]<-"WALKING_UPSTAIRS"
step4[step4$Activity=="3","Activity"]<-"WALKING_DOWNSTAIRS"
step4[step4$Activity=="4","Activity"]<-"SITTING"
step4[step4$Activity=="5","Activity"]<-"STANDING"
step4[step4$Activity=="6","Activity"]<-"LAYING"

## write tidy raw data to a file
write.table(step4,file="coursera-step4.txt",row.names=FALSE)

## Calculate averages for each activity and subject (Step 5)
library(plyr)
step5<-ddply(step4,.(Subject,Activity),colwise(mean))

## write tidy summary data to a file
write.table(step5,file="coursera-step5.txt",row.names=FALSE)