## Load libraries needed 
library(plyr)

## Before running set this variable to 0 or 1 (in practice we should pass argument at run time)
DOWNLOAD <- 0    ## Set this to 0 if you want to download the zip file and unzip it. 
## else set to 1 and this will skip the step download etc. 

if ( DOWNLOAD == 0) {                  ## Get the zip file from location provided in instructions
  zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  
  download.file(zipURL, destfile="UCIDataset.zip", method="curl")  # download file
  unzip(zipfile="UCIDataset.zip", exdir=".")     ## unzip file, folder UCI HAR Dataset created
} ## End of if DOWNLOAD



# Create clean features.txt data 
  features <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
  features[,2] <- gsub("\\(|\\)","",features[,2])
  features[,2] <- gsub("-|,","_", features[,2])
  features[,2] <- tolower(features[,2])
  
  ## TEST DATA SET 
  stest <- read.table("UCI HAR Dataset/test/subject_test.txt")
  colnames(stest) <- "subject_id"
  atest <- read.table("UCI HAR Dataset/test/y_test.txt")
  colnames(atest) <- "activity_id"
  dtest <- read.table("UCI HAR Dataset/test/X_test.txt")
  colnames(dtest) <- features[,2]
  mtest <- cbind(stest,atest,dtest)   # Merge subject, activity, data test data sets
  testdata <- mtest[,c(1,2,grep("_mean_|_mean$|_std_|_std$", names(mtest)))]  ## get mean/stddev etc 
  ## TRAIN DATA SET
  strain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  colnames(strain) <- "subject_id"
  atrain <- read.table("UCI HAR Dataset/train/y_train.txt")
  colnames(atrain) <- "activity_id"
  dtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
  colnames(dtrain) <- features[,2]
  mtrain <- cbind(strain,atrain,dtrain)
  traindata <- mtrain[,c(1,2,grep("_mean_|_mean$|_std_|_std$", names(mtrain)))]  # get mean/stddev etc 
  alldata <- rbind(testdata,traindata)  ## Combine test and train data
  
  alabels <- read.table("UCI HAR Dataset/activity_labels.txt", colClasses = "character") ## read activity labels
  colnames(alabels) <- c("activity_id", "activity_name")
  alldata <- merge(alabels, alldata)     # merge activity lables and data for activity names
  #alldata$activity_name <- tolower(alldata$activity_name)  
  

    temp <- names(alldata) %in% c("activity_id")  #clean up if any doubles or duplicates
    alldata <- alldata[!temp]
  
  ## Creates tidy data set with the average of each variable
  ## for each activity and each subject
  tidydata <- aggregate(alldata[,3:ncol(alldata)], by=list(subject_id=alldata$subject_id,activity_name=alldata$activity_name), FUN=mean, na.rm=TRUE)
  
  ## Cosmetics: adding "average" to data columns and ordering
  #for (i in 3:ncol(tidydata)) {
  #  colnames(tidydata)[i] = paste("average_",colnames(tidydata)[i], sep = "")
  #}
 
  tidydata <- tidydata[order(tidydata$subject_id,tidydata$activity_name),]
  write.table(tidydata, "tidydataset.txt", row.names=FALSE)