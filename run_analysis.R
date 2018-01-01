# Title: Getting and Cleaning Data Course Project
# Author: Víctor Alfonso Rodríguez López
# Date: Dec 2017

# The following script does:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Load libraries
library(plyr)
library(reshape2)

# Create a new directory in case it does not exist
if(!file.exists("./exercises")){dir.create("./exercises")}

#Download the dataset that will be tidy
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "./exercises/accelerometer.zip")

#Unzip dataset
unzip("./exercises/accelerometer.zip", exdir = "./exercises/accelerometer")

#Read test and train files
#TEST
activity_number_test<- read.table("./exercises/accelerometer/UCI HAR Dataset/test/y_test.txt")
record_test<- read.table("./exercises/accelerometer/UCI HAR Dataset/test/x_test.txt")
subject_test<- read.table("./exercises/accelerometer/UCI HAR Dataset/test/subject_test.txt")
#TRAIN
activity_number_train<- read.table("./exercises/accelerometer/UCI HAR Dataset/train/y_train.txt")
record_train<- read.table("./exercises/accelerometer/UCI HAR Dataset/train/x_train.txt")
subject_train<- read.table("./exercises/accelerometer/UCI HAR Dataset/train/subject_train.txt")

#Read file with activity_labels
activity_labels<- read.table("./exercises/accelerometer/UCI HAR Dataset/activity_labels.txt")

#Read file with features
features<- read.table("./exercises/accelerometer/UCI HAR Dataset/features.txt")
features_clean = gsub("[()-]","", features[,2]) #Clean speacial characters from features

#Change the column names of "activity_number" and "subject" data frames
#TEST
colnames(activity_number_test)= c("activityNumber") ; colnames(subject_test)= c("subject")
#TRAIN
colnames(activity_number_train)= c("activityNumber"); colnames(subject_train)= c("subject")

#Add an id to each observation of "activityNumber" and "subject" in order to join all together by id
#TEST
id_activity_number_test = data.frame(id= 1:2947, activityNumber = activity_number_test)
id_subject_test = data.frame(id= 1:2947, subject = subject_test)
list_test = list(id_activity_number_test, id_subject_test) #Put data frames within a list
#TRAIN
id_activity_number_train = data.frame(id= (1:7352), activityNumber = activity_number_train)
id_subject_train = data.frame(id= (1:7352), subject = subject_train)
list_train = list(id_activity_number_train, id_subject_train) #Put data frames within a list

#Join every element of the list by id
#TEST
test_aux = join_all(list_test)
#TRAIN
train_aux = join_all(list_train)

#Substitutes the activity number by activity name
#TEST
aux_walking_test<- sub("1",activity_labels[1,2],test_aux[,"activityNumber"]) #1 WALKING
aux_walking_upstairs_test<- sub("2",activity_labels[2,2],aux_walking_test) #2 WALKING_UPSTAIRS
aux_walking_downstairs_test<- sub("3",activity_labels[3,2],aux_walking_upstairs_test) #3 WALKING_DOWNSTAIRS
aux_sitting_test<- sub("4",activity_labels[4,2],aux_walking_downstairs_test) #4 SITTING
aux_standing_test<- sub("5",activity_labels[5,2],aux_sitting_test) #5 STANDING
activity_name_test<- sub("6",activity_labels[6,2],aux_standing_test) #6 LAYING
#TRAIN
aux_walking_train<- sub("1",activity_labels[1,2],train_aux[,"activityNumber"]) #1 WALKING
aux_walking_upstairs_train<- sub("2",activity_labels[2,2],aux_walking_train) #2 WALKING_UPSTAIRS
aux_walking_downstairs_train<- sub("3",activity_labels[3,2],aux_walking_upstairs_train) #3 WALKING_DOWNSTAIRS
aux_sitting_train<- sub("4",activity_labels[4,2],aux_walking_downstairs_train) #4 SITTING
aux_standing_train<- sub("5",activity_labels[5,2],aux_sitting_train) #5 STANDING
activity_name_train<- sub("6",activity_labels[6,2],aux_standing_train) #6 LAYING

#Add an id to each observation of the data frame with activity names in order to join by id with the test_aux
#TEST
id_activity_name_test = data.frame(id= 1:2947, activityName = activity_name_test)
test_temp = join(test_aux, id_activity_name_test) #Join test_aux and id_aux_laying_test by id
#TRAIN
id_activity_name_train = data.frame(id= 1:7352, activityName = activity_name_train)
train_temp = join(train_aux, id_activity_name_train) #Join train_aux and id_aux_laying_train by id

#Changes column names of "record" data frames
#TEST
colnames(record_test) = features_clean 
#TRAIN
colnames(record_train) = features_clean

#Find name columns within "record" data frames that contain the word "mean" or "std"
#TEST
find_columns_record_test = grep("mean|std", names(record_test), value=T)
#TRAIN
find_columns_record_train = grep("mean|std", names(record_train), value=T)

#Subset just "mean" and "std" columns from "record" data frames and add an id
#TEST
record_test_clean = record_test[, find_columns_record_test]
id_record_test_clean = data.frame(id= 1:2947, record_test_clean)
#TRAIN
record_train_clean = record_train[, find_columns_record_train]
id_record_train_clean = data.frame(id= 1:7352, record_train_clean)

#Join by id (test_temp with id_record_test_clean) and (train_temp with id_record_train_clean)
#TEST
test = join(test_temp, id_record_test_clean)
#TRAIN
train = join(train_temp, id_record_train_clean)

#Merge test and train in order to create just one data frame and sort by subject and activitynumber
data = arrange(rbind(test, train), subject, activityNumber)

#Erase id and activitynumber columns
data$activityNumber = NULL; data$id = NULL
