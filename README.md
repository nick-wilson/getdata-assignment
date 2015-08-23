# Getting and Cleaning Data Course Project
This R script cleans the data set extracted from the "UCI HAR Dataset.zip" file which consists of fitness data collected
from the accelerometers of Galaxy S smartphones.

It will produce two files
|File|Description|
|:-|:-|
|coursera-step4.txt|Cleaned data set with the values for the mean and standard deviation for each measurement|
|coursera-step5.txt|Data set with the average of each variable for each activity and each subject|

Please refer to the code book for more information about the variables.

## Usage instructions

The script assumes that the directory "UCI HAR Dataset" is present in the current working directory containing the
unzipped data set. If that is true then the following commands show how the script can be run on OS/X or Linux.
~~~~
git clone https://github.com/nick-wilson/getdata-assignment.git && \
Rscript getdata-assignment/run_analysis.R
~~~~
If the data set has not been unzipped then this will need to be done before the script is run:
~~~~
unzip "UCI HAR Dataset.zip" && \
git clone https://github.com/nick-wilson/getdata-assignment.git && \
Rscript getdata-assignment/run_analysis.R
~~~~

## Description
The script performs the following actions:
* Extracts the entries for the mean and standard deviation for each measurement.
* Merges training data and test data together.
* Convert activity data from integers to descriptive names.
* Labels data set with descriptive names.
* Writes data set to a file.

