##Clean data course Project

##Library that will be needed
library(reshape2)

##Assumes that the files are already unzipped and the directories are:
## data, data/test, data/train

## Begin by creating merged tables for the test and training data
readTest<-read.table("data/test/X_test.txt")
readTrain<-read.table("data/train/X_train.txt")
mergeX<-rbind(readTest, readTrain)

readTest<-read.table("data/test/y_test.txt")
readTrain<-read.table("data/train/y_train.txt")
mergeY<-rbind(readTest, readTrain)

readTest<-read.table("data/test/subject_test.txt")
readTrain<-read.table("data/train/subject_train.txt")
mergeSub<-rbind(readTest, readTrain)

## create tables for the features and the labels
features<-read.table("data/features.txt")
labels<-read.table("data/activity_labels.txt")

##Label all the column names appropriately
colnames(mergeX)<-features[,2]
colnames(mergeY)<-"activity"
colnames(mergeSub)<-"subject"


##Pull out the columns for mean and std that we want. Put the new set into bigData
getCols<-grep("-mean\\(|-std\\(",colnames(mergeX))
bigData<-mergeX[,getCols]

#combine all the data sets into bigData
bigData<-cbind(mergeY, mergeSub,bigData)

##add the activity labels
bigData<-merge(labels,bigData,by.x=1, by.y="activity")
colnames(bigData)[2]<-"activity"

##Melt the data file to get the mean values
bigMelt = melt(bigData, id.var = c("subject", "activity"))
tidyData = dcast(bigMelt , subject + activity ~ variable, mean)
tidyData$V1<-NULL

##Put in the new "more descriptive" labels for the variables
newLabels<-read.csv("newlabels.txt")
colnames(tidyData)<-colnames(newLabels)

##Write out the Tidy data file
write.table(tidyData, file="tidyData.txt")




