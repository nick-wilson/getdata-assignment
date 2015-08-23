# Code book for the modified Human Activity Recognition Using Smartphones Data Set 

## Summary

Data has been collected from the accelerometers from the Samsung Galaxy Smartphone and used to track fitness activities of various subjects.

This code book describes the variables produced from that data after processing by the `run_analysis.R` script from this repository.

The website describing the experiment is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data is available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

*Please note that the formatting of this file has been designed to be viewed on the Github site. Other implementations of Markdown may not format the table correctly.*

## Modifications to the original data

* Only the mean and standard deviations of the measurements were extracted.
* The training and test sets were merged togther.
* The integers used to represent the entries in the activity data set were replaced with their corresponding descriptions.
* The average of each variable for each data set and each subject was calculated.

## Variables
The data table generatedaby the R script from the data set contains the following variables.

Variable | Type | Description
:------- | :--- | :-------
Subject | int | Identifier for each subject
Activity | chr | The activities which were measured. Valid values: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`
`tBodyAcc-mean-X` | `num` | Mean of time domain signal for BodyAcc in X direction
`tBodyAcc-mean-Y` | `num` | Mean of time domain signal for BodyAcc in Y direction
`tBodyAcc-mean-Z` | `num` | Mean of time domain signal for BodyAcc in Z direction
`tBodyAcc-std-X` | `num` | Std. Dev. of time domain signal for BodyAcc in X direction
`tBodyAcc-std-Y` | `num` | Std. Dev. of time domain signal for BodyAcc in Y direction
`tBodyAcc-std-Z` | `num` | Std. Dev. of time domain signal for BodyAcc in Z direction
`tGravityAcc-mean-X` | `num` | Mean of time domain signal for GravityAcc in X direction
`tGravityAcc-mean-Y` | `num` | Mean of time domain signal for GravityAcc in Y direction
`tGravityAcc-mean-Z` | `num` | Mean of time domain signal for GravityAcc in Z direction
`tGravityAcc-std-X` | `num` | Std. Dev. of time domain signal for GravityAcc in X direction
`tGravityAcc-std-Y` | `num` | Std. Dev. of time domain signal for GravityAcc in Y direction
`tGravityAcc-std-Z` | `num` | Std. Dev. of time domain signal for GravityAcc in Z direction
`tBodyAccJerk-mean-X` | `num` | Mean of time domain signal for BodyAccJerk in X direction
`tBodyAccJerk-mean-Y` | `num` | Mean of time domain signal for BodyAccJerk in Y direction
`tBodyAccJerk-mean-Z` | `num` | Mean of time domain signal for BodyAccJerk in Z direction
`tBodyAccJerk-std-X` | `num` | Std. Dev. of time domain signal for BodyAccJerk in X direction
`tBodyAccJerk-std-Y` | `num` | Std. Dev. of time domain signal for BodyAccJerk in Y direction
`tBodyAccJerk-std-Z` | `num` | Std. Dev. of time domain signal for BodyAccJerk in Z direction
`tBodyGyro-mean-X` | `num` | Mean of time domain signal for BodyGyro in X direction
`tBodyGyro-mean-Y` | `num` | Mean of time domain signal for BodyGyro in Y direction
`tBodyGyro-mean-Z` | `num` | Mean of time domain signal for BodyGyro in Z direction
`tBodyGyro-std-X` | `num` | Std. Dev. of time domain signal for BodyGyro in X direction
`tBodyGyro-std-Y` | `num` | Std. Dev. of time domain signal for BodyGyro in Y direction
`tBodyGyro-std-Z` | `num` | Std. Dev. of time domain signal for BodyGyro in Z direction
`tBodyGyroJerk-mean-X` | `num` | Mean of time domain signal for BodyGyroJerk in X direction
`tBodyGyroJerk-mean-Y` | `num` | Mean of time domain signal for BodyGyroJerk in Y direction
`tBodyGyroJerk-mean-Z` | `num` | Mean of time domain signal for BodyGyroJerk in Z direction
`tBodyGyroJerk-std-X` | `num` | Std. Dev. of time domain signal for BodyGyroJerk in X direction
`tBodyGyroJerk-std-Y` | `num` | Std. Dev. of time domain signal for BodyGyroJerk in Y direction
`tBodyGyroJerk-std-Z` | `num` | Std. Dev. of time domain signal for BodyGyroJerk in Z direction
`tBodyAccMag-mean` | `num` | Mean of time domain signal for BodyAccMag
`tBodyAccMag-std` | `num` | Std. Dev. of time domain signal for BodyAccMag
`tGravityAccMag-mean` | `num` | Mean of time domain signal for GravityAccMag
`tGravityAccMag-std` | `num` | Std. Dev. of time domain signal for GravityAccMag
`tBodyAccJerkMag-mean` | `num` | Mean of time domain signal for BodyAccJerkMag
`tBodyAccJerkMag-std` | `num` | Std. Dev. of time domain signal for BodyAccJerkMag
`tBodyGyroMag-mean` | `num` | Mean of time domain signal for BodyGyroMag
`tBodyGyroMag-std` | `num` | Std. Dev. of time domain signal for BodyGyroMag
`tBodyGyroJerkMag-mean` | `num` | Mean of time domain signal for BodyGyroJerkMag
`tBodyGyroJerkMag-std` | `num` | Std. Dev. of time domain signal for BodyGyroJerkMag
`fBodyAcc-mean-X` | `num` | Mean of FFT of BodyAcc in X direction
`fBodyAcc-mean-Y` | `num` | Mean of FFT of BodyAcc in Y direction
`fBodyAcc-mean-Z` | `num` | Mean of FFT of BodyAcc in Z direction
`fBodyAcc-std-X` | `num` | Std. Dev. of FFT of BodyAcc in X direction
`fBodyAcc-std-Y` | `num` | Std. Dev. of FFT of BodyAcc in Y direction
`fBodyAcc-std-Z` | `num` | Std. Dev. of FFT of BodyAcc in Z direction
`fBodyAccJerk-mean-X` | `num` | Mean of FFT of BodyAccJerk in X direction
`fBodyAccJerk-mean-Y` | `num` | Mean of FFT of BodyAccJerk in Y direction
`fBodyAccJerk-mean-Z` | `num` | Mean of FFT of BodyAccJerk in Z direction
`fBodyAccJerk-std-X` | `num` | Std. Dev. of FFT of BodyAccJerk in X direction
`fBodyAccJerk-std-Y` | `num` | Std. Dev. of FFT of BodyAccJerk in Y direction
`fBodyAccJerk-std-Z` | `num` | Std. Dev. of FFT of BodyAccJerk in Z direction
`fBodyGyro-mean-X` | `num` | Mean of FFT of BodyGyro in X direction
`fBodyGyro-mean-Y` | `num` | Mean of FFT of BodyGyro in Y direction
`fBodyGyro-mean-Z` | `num` | Mean of FFT of BodyGyro in Z direction
`fBodyGyro-std-X` | `num` | Std. Dev. of FFT of BodyGyro in X direction
`fBodyGyro-std-Y` | `num` | Std. Dev. of FFT of BodyGyro in Y direction
`fBodyGyro-std-Z` | `num` | Std. Dev. of FFT of BodyGyro in Z direction
`fBodyAccMag-mean` | `num` | Mean of FFT of BodyAccMag
`fBodyAccMag-std` | `num` | Std. Dev. of FFT of BodyAccMag
`fBodyBodyAccJerkMag-mean` | `num` | Mean of FFT of BodyBodyAccJerkMag
`fBodyBodyAccJerkMag-std` | `num` | Std. Dev. of FFT of BodyBodyAccJerkMag
`fBodyBodyGyroMag-mean` | `num` | Mean of FFT of BodyBodyGyroMag
`fBodyBodyGyroMag-std` | `num` | Std. Dev. of FFT of BodyBodyGyroMag
`fBodyBodyGyroJerkMag-mean` | `num` | Mean of FFT of BodyBodyGyroJerkMag
`fBodyBodyGyroJerkMag-std` | `num` | Std. Dev. of FFT of BodyBodyGyroJerkMag

