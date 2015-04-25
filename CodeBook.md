##Getting and Cleaning Data Course Project
###Code Book for run_analysis.R

Description of variables and transformations:

* features - data frame for feature variables
  (loaded from file features.txt);
* activity_lbl - data frame for activity labels
  (loaded from file activity_labels.txt);

* subject_test - data frame for subjects who performed the activity
  (loaded from file subject_test.txt);
* x_test - data frame for test set
  (loaded from file X_test.txt);
* y_test - data frame for test activity labels
  (loaded from file y_test.txt);
* test_set - data frame for all test data set
  (used cbind to combine data of subject_test,y_test,x_test by columns);

* subject_train - data frame for subjects who performed the activity
  (loaded from file subject_train.txt)
* x_train - data frame for training set
  (loaded from file X_train.txt)
* y_train - data frame for training activity labels
  (loaded from file y_train.txt) 
* train_set - data frame for all training data set
  (used cbind to combine data of subject_train,y_train,x_train by columns);

* full_set - data frame that contains data of training and test sets
  (used rbind to merge training and test data sets);

* mean_std_cols - vector of indexes for features which contain mean and standard
  deviation for measurements
  (before the creation of this variable script changes in names of these features:
   Mean() to Mean and Std() to Std);
* mean_std_set - data frame containing only the measurements on the mean
  and standard deviation for each measurement
  (Data extracted from full_set - Subject, Activity and measurements columns
  with index in mean_std_cols. After that script sets descriptive names
  for activities from activity_lbl and column names from features using mean_std_cols);

* avg_set - tiny data set with the average of each variable for each activity
  and each subject (Aggregate used for creation tiny data set and write.table
  used for writing this set into "result.txt" file in the working directory).

###Tiny data set contains columns:
* Subject - identifies the subject who performed the activity.
            Its range is from 1 to 30;
* Activity - performed activity name: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
             SITTING, STANDING, LAYING;

  Other columns contains avarage values of mean (Mean in name) and standard deviation
  (Std in name) for measurements variables.
  
  Time domain signals (t):
* tBodyAcc - body acceleration signals in the X, Y and Z directions;
* tGravityAcc - gravity acceleration signals in the X, Y and Z directions;
* tBodyAccJerk - Jerk signals of body linear acceleration in the X, Y and Z directions;
* tBodyGyro - gyroscope signals in the X, Y and Z directions;
* tBodyGyroJerk - Jerk signals of angular velocity in the X, Y and Z directions;
* tBodyAccMag - magnitude of body acceleration signals;
* tGravityAccMag - magnitude of gravity acceleration signals;
* tBodyAccJerkMag - magnitude of Jerk signals of body linear acceleration;
* tBodyGyroMag - magnitude of gyroscope signals;
* tBodyGyroJerkMag - magnitude of Jerk signals of angular velocity;
  
  Fast Fourier Transform (f) applied to some of these signals:
* fBodyAcc - in the X, Y and Z directions;
* fBodyAccJerk - in the X, Y and Z directions;
* fBodyGyro - in the X, Y and Z directions;
* fBodyAccMag;
* fBodyAccJerkMag;
* fBodyGyroMag;
* fBodyGyroJerkMag.