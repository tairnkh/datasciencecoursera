#Getting and Cleaning Data Course Project

### Study design
The purpose of this project is to process data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description of this data is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used in the project is located at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw data contains measurements from smartphones for group of 30 volunteers who perfomed six activities.
And from that data extracted only the measurements on the mean and standard deviation for each measurement.
The goal of the project is to prepare tidy data set that contains avarage of each extracted variable for each activity and each subject.

###Tiny data set description

The first two colums contains variables:
* Subject - identifies the subject who performed the activity. Its range is from 1 to 30.
* Activity - performed activity name: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
   SITTING, STANDING, LAYING;

Other 66 columns contains avarage values of mean (Mean in name) and standard deviation
(Std in name) for measurements variables.

The measurements that come from the accelerometer and gyroscope 3-axial raw signals contain name AccX (Y or Z)
and GyroX (Y or Z).

Prefix 't' in variable name indicates time domain signals.
Prefix 'f' in variable name indicates frequency domain signals.

Acceleration signal separated into body and gravity acceleration signals: tBodyAccX (Y or Z) and tGravityAccX (Y or Z).
From body linear acceleration and angular velocity obtained Jerk signals: tBodyAccJerkX (Y or Z) and tBodyGyroJerkX (Y or Z).
Also the magnitude of these three-dimensional signals contain in the variables name Mag (tBodyAccMag, tGravityAccMag,
tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

List of  the measurements variables:
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccJerkMagMean
* fBodyAccJerkMagStd
* fBodyGyroMagMean
* fBodyGyroMagStd
* fBodyGyroJerkMagMean
* fBodyGyroJerkMagStd