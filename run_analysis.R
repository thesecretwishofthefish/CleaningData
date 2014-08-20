### Requirements:
# Here are the data for the project:
#  
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# You should create one R script called run_analysis.R that does the following. 
#
# 1 - Merges the training and the test sets to create one data set.
# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3 - Uses descriptive activity names to name the activities in the data set
# 4 - Appropriately labels the data set with descriptive variable names. 
# 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# user parameters (customize it before running the script)
workingDir <- "c:/temp"
scriptSubDir <- "cleaningDataAssignment"
zipUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFileName <-"source.zip"


#directory init
setwd(workingDir)
if(!file.exists(scriptSubDir)){dir.create(scriptSubDir)}
setwd(paste(workingDir,scriptSubDir,sep="/"))

#libraries init
if(!require("downloader"))
  {install.packages("downloader")
   require("downloader")
}
 
#file download/unzip
#download.file(zipUrl,destfile=zipFileName,mode="w")
download(zipUrl,"source.zip")
unzip(zipFileName)

#reading files
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)
features = read.table('./UCI HAR Dataset/features.txt',header=FALSE)
subjectTrain = read.table('./UCI HAR Dataset/train/subject_train.txt',header=FALSE)
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
xTrain = read.table('./UCI HAR Dataset/train/x_train.txt',header=FALSE)
yTrain = read.table('./UCI HAR Dataset/train/y_train.txt',header=FALSE)
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

# Assigning names to columns
colnames(activityLabels) = c('activityCode','activityDesc');
colnames(subjectTrain) = "subjectCode";
colnames(xTrain) = features[,2];
colnames(yTrain) = "activityCode";
colnames(subjectTest) = "subjectCode";
colnames(xTest) = features[,2];
colnames(yTest) = "activityCode";

# 1 - Merges the training and the test sets to create one data set.
train = cbind(yTrain,subjectTrain,xTrain);
test = cbind(yTest,subjectTest,xTest);
all = rbind(train,test);

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
all<- all[(grepl("-mean\\(\\)|-std\\(\\)|activity|subject", colnames(all)) &!grepl("mean..-|-meanFreq..|-std()..-", colnames(all)))]

# 3 - Uses descriptive activity names to name the activities in the data set
all = merge(all,activityLabels,by='activityCode',all.x=TRUE);

# 4 - Appropriately labels the data set with descriptive variable names. 
colNames=colnames(all)
colNames <- gsub("-mean", "Mean", colNames)
colNames <- gsub("-std", "StdDev", colNames)
colNames <- gsub("[()-]", "", colNames)
colNames <- gsub("^(t)", "time", colNames)
colNames <- gsub("^(f)", "freq", colNames)
colnames(all) =colNames

# 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy<- aggregate(all[,!names(all) %in% c('activityCode','subjectCode')],by=list(activityCode=all$activityCode,subjectCode = all$subjectCode),FUN=mean, na.rm=TRUE); #grouping and averages calculation
tidy = merge(tidy,activityLabels,by='activityCode',all.x=TRUE);
colnames(tidy)[22]="activityDesc"
tidy<-subset(tidy,select=c(1,22,2:20)) #columns reordering
#write.csv(file="tidy.csv", x=tidy)
write.table(tidy,file="tidy.txt",row.names=FALSE) #output file