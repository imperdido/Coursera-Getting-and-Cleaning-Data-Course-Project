run_analysis <- function () {

# 1. Merges the training and the test sets to create one data set.

# Read the input test files into tables
  xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
  subjtext <- read.table("./UCI HAR Dataset/test/Subject_test.txt")
  ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
# Read the input train files into tables
  xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
  subjtrain <- read.table("./UCI HAR Dataset/train/Subject_train.txt")
  ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  
# Read the headers
  feat <- read.table("./UCI HAR Dataset/features.txt")


#merge activity file
  names(ytest) <- c("activity")
  names(ytrain) <- c("activity")
  act_all <- rbind(ytrain, ytest)
  

#merge subject file
  subj_all <- rbind(subjtrain, subjtext)
  names(subj_all) <- c("subject")
  
#merge data by rows
  X_merged <- rbind(xtrain,xtest)
  names(X_merged) <-feat[,2]

#merge all (activity + subject + data)
  output <- cbind(act_all, subj_all, X_merged)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#get the columns containing mean() and std()
  mean_std_cols <- grep("mean\\(\\)|std\\(\\)",names(output))
  reqcols <- c(1,2, mean_std_cols) # add descriptive columns
  output_f <- output[reqcols]

#3.Uses descriptive activity names to name the activities in the data set
#add the activity labels 
  actvlbl <- read.table("./UCI HAR Dataset/activity_labels.txt")
  output_fa = merge( output_f, actvlbl, by.x="activity",by.y= "V1", sort= FALSE )
  require(dplyr)
  output_fa <- rename(output_fa,activitylabel=V2 )

#4. Appropriately labels the data set with descriptive variable names.
#rename labels with discriptive names 
# t-> time, f-> frequency, Gyro -> Gyroscope, Acc -> Accelerometer, Mag -> Magnitude

  names(output_fa) <- gsub("^t", "time", names(output_fa))
  names(output_fa) <- gsub("^f", "frequency", names(output_fa))
  names(output_fa) <- gsub("Mag", "Magnitude", names(output_fa))  
  names(output_fa) <- gsub("Acc", "Accelerometer", names(output_fa))
  names(output_fa) <- gsub("Gyro", "Gyroscope", names(output_fa))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#create 2nd tidy data set summarizing
  grouped <- group_by(output_fa,activitylabel,subject)
  output_gr <- grouped %>% summarize_all(mean)

#write the outputs to file
# write.table(output_fa, file ="output.txt",row.names = FALSE)
write.table(output_gr, file ="tidydata_summary.txt",row.names = FALSE)
  }


