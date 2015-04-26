#Working directory for the script is "UCI HAR Dataset"

#load names of feature variables
features <- read.table("features.txt")

#load activity labels
activity_lbl <- read.table("activity_labels.txt") 

#load test data set
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt") 
test_set <- cbind(subject_test,y_test,x_test)

#load training data set
subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt") 
train_set <- cbind(subject_train, y_train, x_train)

#merge training and test data sets
full_set <- rbind(test_set, train_set)

#extracting only the measurements on the mean and standard deviation for each measurement
features[,2] <- gsub("mean\\(\\)","Mean",features[,2])
features[,2] <- gsub("std\\(\\)","Std",features[,2])
mean_std_cols <- sort(c(grep("\\-Mean",features[ ,2]), grep("\\-Std",features[ ,2])))
mean_std_set <- full_set[ ,c(1,2, mean_std_cols+2)]

#setting descriptive names for activity and feature variables
mean_std_set[ ,2] <- activity_lbl[mean_std_set[ ,2],2]
names(mean_std_set) <- c("Subject", "Activity", features[mean_std_cols,2])
names(mean_std_set) <- gsub("\\-","",names(mean_std_set))
names(mean_std_set) <- gsub("BodyBody","Body",names(mean_std_set))

#creating data set with the average of each variable for each activity and each subject
avg_set <- aggregate(x=mean_std_set[,3:ncol(mean_std_set)], by=list(Subject=mean_std_set[,1],Activity=mean_std_set[,2]), FUN="mean")

#writing result data set into txt file
write.table(avg_set, "result.txt",quote = FALSE, row.name=FALSE)
