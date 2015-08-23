# Getting and Cleaning Data Course Project
This R script cleans the data set extracted from the `UCI HAR Dataset.zip` file which consists of fitness data collected
from the accelerometers of Galaxy S smartphones.

The following two files will be produced by the script:

File                | Description
--------------------|------------------------------------------------------------------------------------------
`coursera-step4.txt`| Cleaned data set with the values for the mean and standard deviation for each measurement
`coursera-step5.txt`| Data set with the average of each variable for each activity and each subject

Please refer to the code book for more information about the variables.

## Usage instructions

The script assumes that the directory `UCI HAR Dataset` is present in the current working directory containing the
unzipped data set. If that is true then the following commands show how the script can be run on OS/X or Linux.
~~~~
git clone https://github.com/nick-wilson/getdata-assignment.git && \
Rscript getdata-assignment/run_analysis.R
~~~~
If that directory is not present then the script will check for `train/X_train.txt` in the current working directory.
If it cannot find that file then it will try to unzip the zip file.

## Functionality
The script performs the following actions:
* Extracts the entries for the mean and standard deviation for each measurement.
* Merges training data and test data together.
* Convert activity data from integers to descriptive names.
* Labels data set with descriptive names.
* Writes data set to a file.

