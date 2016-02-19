library(plyr)
# 0. Preperation ----------------------------------------------------------

#0.1 Setting working directory
setwd("C:/Users/GilbertHan/Documents/Coursera_DataScience/3.Getting and Cleaning Data/week 4/data/UCI HAR Dataset")

#0.2 Loading files
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

testlabels <- read.table("./test/y_test.txt")
testsubject <- read.table("./test/subject_test.txt")
testset <- read.table("./test/X_test.txt")

trainlabels <- read.table("./train/y_train.txt")
trainsubject <- read.table("./train/subject_train.txt")
trainset <- read.table("./train/X_train.txt")

# 1. Merging the training and the test sets to create one data set. -------

# 1.1 cbind test data

testdata <- cbind(testsubject, testlabels,testset )

# 1.2 cbind test data

traindata <- cbind(trainsubject, trainlabels,trainset)

# 1.3 Adding a column for distinguish test and train data

traindata <- mutate(traindata, Flag = "train")
testdata <- mutate(testdata, Flag = "test")

# 1.4 Merging test and train data

datasetHAR <- rbind(traindata, testdata)

head(datasetHAR,3)


# 2. Extracting only the measurements on the mean and standard deviation for each measurement --------

names(features) <- c("FeatureID", "Feature")
features$Feature <- as.character(features$Feature)

#2.1 Extracting index numbers of the measurement on mean() and std() from 'features'

MeanStdIndex <- grep("[Mm]ean.)|std.)", features$Feature)

#2.2 Extracting dataset from index numbers

datasetHAR2 <-datasetHAR[, c(1,2,564,MeanStdIndex+2)]
#First variable is SubjectID, Second is ActivityID and Third is Flag for distinguishing test and train data.

head(datasetHAR2,3)

# 3. Use decriptive activity names to name the activities in the data set --------

names(activity_labels) <- c("ActivityID", "Activity")

#3.1 updating from ActivityID to Activity(Name) using activity_labels.
datasetHAR2 <- merge(datasetHAR2, activity_labels, by.x="V1.1", by.y ="ActivityID")

#3.2 arrange the order of variables
datasetHAR3 <- datasetHAR2[,c(2,70,3,4:69)]

head(datasetHAR3,3)


# 4. Appropriately labels the data set with descriptive variable names --------

featureMeanStd <- features[MeanStdIndex,]
rownames(featureMeanStd) <- NULL

# 4.1 Getting rid of duplication of 'feature' values
featureMeanStd$Feature<- gsub("BodyBody", "Body", featureMeanStd$Feature)


#4.2 update variable names from Feature(name) of 'features'
names(datasetHAR3) <- c("SubjectID", "Activity",  "Flag",  featureMeanStd$Feature)

head(datasetHAR3,3)


# 5.Tidy data set with average of each variable for each activity and each subject.  --------

#5.1 Average of each variable for each activity and each subject
datasetHAR4 <- aggregate(datasetHAR3[,4:69], datasetHAR3[,c("SubjectID","Activity","Flag")],mean )

#5.2 arrange the order by SubjectID and Activity
datasetHAR5 <- arrange(datasetHAR4, SubjectID, Activity)

head(datasetHAR5,3)

#5.3 Saving from dataset to files 
save(datasetHAR3, file = "Step4_dataset.rda")
save(datasetHAR5, file = "Step5_dataset.rda")

write.table(datasetHAR3, "Step4_dataset.txt", sep = ",", row.names = FALSE
            , quote = FALSE, append = TRUE)
write.table(datasetHAR5, "Step5_dataset.txt", sep = ",", row.names = FALSE
            , quote = FALSE, append = TRUE)

