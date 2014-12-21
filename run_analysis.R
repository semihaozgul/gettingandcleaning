# reading data sets from UCI HAR Dataset file
trainingset=read.table("./UCI HAR Dataset/train/X_train.txt")
testingset=read.table("./UCI HAR Dataset/test/X_test.txt")
subjecttraining=read.table("./UCI HAR Dataset/train/subject_train.txt")
subjecttesting=read.table("./UCI HAR Dataset/test/subject_test.txt")
ytrain=read.table("./UCI HAR Dataset/train/y_train.txt")
ytest=read.table("./UCI HAR Dataset/test/y_test.txt")
activitylabels=read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activitylabels)=c("activity_id","activity")
features=read.table("./UCI HAR Dataset/features.txt")
features=sub("()-","_",features[,2],fixed=TRUE)
features=sub("()","",features,fixed=TRUE)
#merging and labeling data set
step1=rbind(trainingset,testingset)
colnames(step1)=features
step2=step1[ ,grep("mean|std", features)]
msubject=rbind(subjecttraining,subjecttesting)
colnames(msubject)="subject_id"
my=rbind(ytrain,ytest)
colnames(my)="activity_id"
step3=cbind(msubject,my,step2)
library(plyr)
step4=join(step3,activitylabels,by = "activity_id", match = "first")
step4=step4[ ,-1]
## appropriately labeling colnames
z=colnames(step4)
z <- gsub('Acc',"Acceleration",z)
z <- gsub('GyroJerk',"AngularAcceleration",z)
z<- gsub('Gyro',"AngularSpeed",z)
z<- gsub('Mag',"Magnitude",z)
z<- gsub('^t',"TimeDomain.",z)
z<- gsub('^f',"FrequencyDomain.",z)
z<- gsub('\\-mean',".Mean",z)
z<- gsub('\\-std',".StandardDeviation",z)
z<- gsub('Freq\\_',"Frequency.",z)
z<- gsub('Freq$',"Frequency",z)
colnames(step4)=z
# creating tidy data set
step5=ddply(step4, c("subject_id","activity"), numcolwise(mean))
write.table(step5, file = "tidydata.txt")
