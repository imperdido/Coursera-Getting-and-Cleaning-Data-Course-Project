Original data set:
====================
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The input files used from the original dataset: 
====================
- 'features.txt': List of all features.
2- 'activity_labels.txt': Links the class labels with their activity name.
3- 'train/X_train.txt': Training set.
4- 'train/y_train.txt': Training labels.
5- 'train/subject_train.txt': Subject labels.
6-  'test/X_test.txt': Test set.
7- 'test/y_test.txt': Test labels.
8- 'test/subject_test.txt': Subject labels.


The following modifications applied to the original data set for cleaning up the data set: 
=================================================
1- Merged the training and the test sets:
  a) merged training files by columns (input files #3-5)
  b) merged test files by columns (input files #6-8)
  c) appeneded training files and test files by rows
  d) added headers to the file (using input file #1)
2- Extracted only the measurements on the mean and standard deviation for each measurement.
3- Added activity names corresponding to each activity variable (using input file #2)
4- Changed the following abbreviations in variable names from the original data:
  t -> time
  f -> frequency
  acc -> accelerometer
  gyro -> gyroscope
  Mag -> Magnitude
5- Summarized the data set for average value of each variable for each activity and each subject.


Variables in the output file
================================

Below are the type of output variables are listed. The Descriptive variables define the 
activity type and the test subject.

The calculated variables contain the average and std calculation of time and frequency measurements for different type of test cases.


Descriptive Variables	
====================	
activitylabel	Value showing the type of the activity performed when the data is collected [Factor w/ 6 Levels]
subject	The subject ID [num][values: 1-30]
activity	Activity number corresponding to each activity label [num][ values : 1-6]
	
Calculated Variables	
===================	
timeBodyAccelerometer-mean()-X	[num][unit=sn]
timeBodyAccelerometer-mean()-Y	[num][unit=sn]
timeBodyAccelerometer-mean()-Z	[num][unit=sn]
timeBodyAccelerometer-std()-X	[num][unit=sn]
timeBodyAccelerometer-std()-Y	[num][unit=sn]
timeBodyAccelerometer-std()-Z	[num][unit=sn]
timeGravityAccelerometer-mean()-X	[num][unit=sn]
timeGravityAccelerometer-mean()-Y	[num][unit=sn]
timeGravityAccelerometer-mean()-Z	[num][unit=sn]
timeGravityAccelerometer-std()-X	[num][unit=sn]
timeGravityAccelerometer-std()-Y	[num][unit=sn]
timeGravityAccelerometer-std()-Z	[num][unit=sn]
timeBodyAccelerometerJerk-mean()-X	[num][unit=sn]
timeBodyAccelerometerJerk-mean()-Y	[num][unit=sn]
timeBodyAccelerometerJerk-mean()-Z	[num][unit=sn]
timeBodyAccelerometerJerk-std()-X	[num][unit=sn]
timeBodyAccelerometerJerk-std()-Y	[num][unit=sn]
timeBodyAccelerometerJerk-std()-Z	[num][unit=sn]
timeBodyGyroscope-mean()-X	[num][unit=sn]
timeBodyGyroscope-mean()-Y	[num][unit=sn]
timeBodyGyroscope-mean()-Z	[num][unit=sn]
timeBodyGyroscope-std()-X	[num][unit=sn]
timeBodyGyroscope-std()-Y	[num][unit=sn]
timeBodyGyroscope-std()-Z	[num][unit=sn]
timeBodyGyroscopeJerk-mean()-X	[num][unit=sn]
timeBodyGyroscopeJerk-mean()-Y	[num][unit=sn]
timeBodyGyroscopeJerk-mean()-Z	[num][unit=sn]
timeBodyGyroscopeJerk-std()-X	[num][unit=sn]
timeBodyGyroscopeJerk-std()-Y	[num][unit=sn]
timeBodyGyroscopeJerk-std()-Z	[num][unit=sn]
timeBodyAccelerometerMagnitude-mean()	[num][unit=sn]
timeBodyAccelerometerMagnitude-std()	[num][unit=sn]
timeGravityAccelerometerMagnitude-mean()	[num][unit=sn]
timeGravityAccelerometerMagnitude-std()	[num][unit=sn]
timeBodyAccelerometerJerkMagnitude-mean()	[num][unit=sn]
timeBodyAccelerometerJerkMagnitude-std()	[num][unit=sn]
timeBodyGyroscopeMagnitude-mean()	[num][unit=sn]
timeBodyGyroscopeMagnitude-std()	[num][unit=sn]
timeBodyGyroscopeJerkMagnitude-mean()	[num][unit=sn]
timeBodyGyroscopeJerkMagnitude-std()	[num][unit=sn]
frequencyBodyAccelerometer-mean()-X	[num][unit=hz]
frequencyBodyAccelerometer-mean()-Y	[num][unit=hz]
frequencyBodyAccelerometer-mean()-Z	[num][unit=hz]
frequencyBodyAccelerometer-std()-X	[num][unit=hz]
frequencyBodyAccelerometer-std()-Y	[num][unit=hz]
frequencyBodyAccelerometer-std()-Z	[num][unit=hz]
frequencyBodyAccelerometerJerk-mean()-X	[num][unit=hz]
frequencyBodyAccelerometerJerk-mean()-Y	[num][unit=hz]
frequencyBodyAccelerometerJerk-mean()-Z	[num][unit=hz]
frequencyBodyAccelerometerJerk-std()-X	[num][unit=hz]
frequencyBodyAccelerometerJerk-std()-Y	[num][unit=hz]
frequencyBodyAccelerometerJerk-std()-Z	[num][unit=hz]
frequencyBodyGyroscope-mean()-X	[num][unit=hz]
frequencyBodyGyroscope-mean()-Y	[num][unit=hz]
frequencyBodyGyroscope-mean()-Z	[num][unit=hz]
frequencyBodyGyroscope-std()-X	[num][unit=hz]
frequencyBodyGyroscope-std()-Y	[num][unit=hz]
frequencyBodyGyroscope-std()-Z	[num][unit=hz]
frequencyBodyAccelerometerMagnitude-mean()	[num][unit=hz]
frequencyBodyAccelerometerMagnitude-std()	[num][unit=hz]
frequencyBodyBodyAccelerometerJerkMagnitude-mean()	[num][unit=hz]
frequencyBodyBodyAccelerometerJerkMagnitude-std()	[num][unit=hz]
frequencyBodyBodyGyroscopeMagnitude-mean()	[num][unit=hz]
frequencyBodyBodyGyroscopeMagnitude-std()	[num][unit=hz]
frequencyBodyBodyGyroscopeJerkMagnitude-mean()	[num][unit=hz]
frequencyBodyBodyGyroscopeJerkMagnitude-std()	[num][unit=hz]
