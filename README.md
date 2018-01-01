==================================================================
# Getting and Cleaning Data Course Project
Version 1.0
==================================================================
Víctor Alfonso Rodríguez López
==================================================================

The dataset used on this project has been obtained from the "Human Activity Recognition Using Smartphones" experiment. For more information about the experiment, please download the dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The goal of this project was to prepare tidy data that can be used for analysis. To do so, it was neccesary to join the files that contained the data recorded from the accelerometer and gyroscope ('x_train.txt' and 'x_test.txt'), the files that contained the activity id ('y_train.txt' and 'y_test.txt') and the files that contained the subject id ('subject_train.txt' and 'subject_test.txt'). The activity id of each observation was substituted by its corresponding activity name and the data recorded was subseted in order to extract only the measurements on the mean and standard deviation for each measurement. To merge all files, an id number was added to every observation of every file in order to join all files by id.

To know step by step how the data was tidied, please see 'run_analysis.md'.

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 79-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================
- 'README.md'
- 'Codebook.md': Shows detailed information about all variables used on the data set.
- 'run_analysis.md': Script used to get the tidy data.

Libraries
======
- plyr
- reshape2

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publications [2] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Víctor Alfonso Rodríguez López. Getting and Cleaning Data Course Project. Monterrey, Mexico. Dec 2017

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Víctor Alfonso Rodríguez López. December 2017.
