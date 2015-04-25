#DataScienceCoursera
For studing data science on Coursera

##Getting and Cleaning Data Course Project

File run_analysis.R implements Getting and Cleaning Data Course Project.

The working directory for the script is the directory with the uncompressed data
for the project (i.e. UCI HAR Dataset).

First, the script loads list of all features and list of activity names.

The script then loads the test data from the files:
* subject_test.txt - subject who performed the activity;
* X_test.txt - test set;
* y_test.txt - test activity labels;
and combines the data by columns (use cbind).

Similarly, script loads and combines the training data from the files:
* subject_train.txt - subject who performed the activity;
* X_train.txt - training set;
* y_train.txt - training activity labels.

Then it merges resulting training and test data sets (uses rbind).

After that, script changes the names of features which contain mean and standard
deviation for measurements (for using as descriptive variable names in data set)
and extracts indexes of these features.
It then creates a new data set containing only measurements of these features.

Next step is setting descriptive names for activity and feature variables.

Finally, sciprt creates tiny data set with the average of each variable
for each activity and each subject (uses aggregate), and writes this set into
"result.txt" file in the working directory.