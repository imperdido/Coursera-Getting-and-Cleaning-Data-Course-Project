# Coursera-Getting-and-Cleaning-Data-Course-Project
Coursera Assignment

Introduction
=============
The run_analysis.R script is generated to summarize average data per activity type and subject, for the data set ->  the Human Activity Recognition Using Smart Datase Version 1.0.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The files included with this project:
=====================================
run_analysis.R -> This script requires the above mentioned dataset to be downloaded into the
R working directory. 

It does the following steps on the data set files:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject and outputs the tidy data file "tidydata_summary.txt" into the working directory.

CodeBook.md -> provides the infortmation on data, variables and transformations done while cleaning up the data. please refer to this file for more details.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


