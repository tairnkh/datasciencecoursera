#DataScienceCoursera
For studing data science on Coursera

##Getting and Cleaning Data Course Project

File run_analysis.R implements Getting and Cleaning Data Course Project.

The working directory for the script is the directory with the uncompressed data
for the project (i.e. UCI HAR Dataset).

First, the script loads list of all features and list of activity names (data frames: features
and activity_lbl).

The script then loads the test data from the files:
* subject_test.txt - subject who performed the activity (data frame: subject_test);
* X_test.txt - test set (data frame: x_test);
* y_test.txt - test activity labels (data frame: y_test);
and combines the data by columns (used cbind and data frame: test_set).

Similarly, script loads and combines the training data (used cbind and data frame: train_set)
from the files:
* subject_train.txt - subject who performed the activity (data frame: subject_train);
* X_train.txt - training set (data frame: x_train);
* y_train.txt - training activity labels (data frame: y_train).

Then it merges resulting training and test data sets (used rbind and data frame full_set).

After that, script changes the names of features which contain mean and standard
deviation for measurements (for using as descriptive variable names in data set)
and extracts indexes of these features (used vector: mean_std_cols).
It then creates a new data set containing only measurements of these features (used
data frame: mean_std_set).

Next step is setting descriptive names for activity and feature variables.

Finally, sciprt creates tiny data set with the average of each variable
for each activity and each subject (used aggregate and data frame: avg_set),
and writes this set into "result.txt" file in the working directory.