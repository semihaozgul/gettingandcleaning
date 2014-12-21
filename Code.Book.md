## Data Sets
This data set is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data have been collected from  a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (1.WALKING, 2.WALKING_UPSTAIRS, 3.WALKING_DOWNSTAIRS,4. SITTING, 5.STANDING,6.LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data

## Variables
the variables of the data  have been described  explicitly in features_info.txt file and the following descriptions avaliable from this file .

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions
<ul>
<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
<li>tBodyAccJerk-XYZ</li>
<li>tBodyGyro-XYZ</li>
<li>tBodyGyroJerk-XYZ</li>
<li>tBodyAccMag</li>
<li>tGravityAccMag</li>
<li>tBodyAccJerkMag</li>
<li>tBodyGyroMag</li>
<li>tBodyGyroJerkMag</li>
<li>fBodyAcc-XYZ</li>
<li>fBodyAccJerk-XYZ</li>
<li>fBodyGyro-XYZ</li>
<li>fBodyAccMag</li>
<li>fBodyAccJerkMag</li>
<li>fBodyGyroMag</li>
<li>fBodyGyroJerkMag</li>
</ul>
The set of variables that were estimated from these signals are: 
<ul>
<li>mean(): Mean value</li>
<li>std(): Standard deviation</li>
<li>mad(): Median absolute deviation </li>
<li>max(): Largest value in array</li>
<li>min(): Smallest value in array</li>
<li>sma(): Signal magnitude area</li>
<li>energy(): Energy measure. Sum of the squares divided by the number of values. </li>
<li>iqr(): Interquartile range</li> 
<li>entropy(): Signal entropy</li>
<li>arCoeff(): Autorregresion coefficients with Burg order equal to 4</li>
<li>correlation(): correlation coefficient between two signals</li>
<li>maxInds(): index of the frequency component with largest magnitude</li>
<li>meanFreq(): Weighted average of the frequency components to obtain a mean frequency</li>
<li>skewness(): skewness of the frequency domain signal </li>
<li>kurtosis(): kurtosis of the frequency domain signal </li>
<li>bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.</li>
<li>angle(): Angle between to vectors.</li>
</ul>
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
<ul>
<li>gravityMean</li>
<li>tBodyAccMean</li>
<li>tBodyAccJerkMean</li>
<li>tBodyGyroMean</li>
<li>tBodyGyroJerkMean</li>
</ul>
note:
<ul>
<li>Features are normalized and bounded within [-1,1].</li>
<li>Each feature vector is a row on the text file.</li>
 </ul>
## Data Transformation
The raw data sets are processed with run_analisys.R script to create a tidy data set.
### Step0
Reading train data,test data ,features data,activity_labels data from the UCI HAR Dataset file 
### Step1
Merging these data sets using suitable commands : rbind(),cbind(),join()
###Step2
Extractig columns which contain mean and std measurements
###Step3 and Step4
Substituting the activity labels to data set using activity_labels.txt and appropriately labeling variable names for example: writing Acceleration  instead of Acc 
###Step5
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.The data set written to the file "tidydata.txt"
 

