---
title: "CodeBook"
output: html_document
---

**Study Design**

The data in this database comes from experiments done with 30 volunteers within an age range of 19-48 years, who were performing six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), while wearing a smartphone (Samsung Galaxy S II) on their waist. 

The embedded accelerometer and gyroscope provided 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Their signals were pre-processed to remove noise. Then they were sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

The sensor acceleration signal, was separated into body and gravity acceleration signals, using another low pass filter. 

Feature variables were calculated in time and frequency domain. 

**Code Book**

- subject  
&nbsp;&nbsp; The id of the volunteer who performed the activity.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Integer values: 1 - 30.   

- activity  
&nbsp;&nbsp; Performed activity.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WALKING_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LAYING  

- tBodyAccMeanX  
&nbsp;&nbsp; Mean body acceleration, in time domain, X-axis

- tBodyAccMeanY  
&nbsp;&nbsp; Mean body acceleration, in time domain, Y-axis

- tBodyAccMeanZ  
&nbsp;&nbsp; Mean body acceleration, in time domain, Z-axis

- tGravityAccMeanX  
&nbsp;&nbsp; Mean gravity acceleration, in time domain, X-axis

- tGravityAccMeanY  
&nbsp;&nbsp; Mean gravity acceleration, in time domain, Y-axis

- tGravityAccMeanZ  
&nbsp;&nbsp; Mean gravity acceleration, in time domain, Z-axis

- tBodyAccJerkMeanX  
&nbsp;&nbsp; Mean body acceleration Jerk signal, in time domain, X-axis

- tBodyAccJerkMeanY  
&nbsp;&nbsp; Mean body acceleration Jerk signal, in time domain, Y-axis

- tBodyAccJerkMeanZ  
&nbsp;&nbsp; Mean body acceleration Jerk signal, in time domain, Z-axis

- tBodyGyroMeanX  
&nbsp;&nbsp; Mean body angular velocity (gyroscope signal), in time domain, X-axis

- tBodyGyroMeanY  
&nbsp;&nbsp; Mean body angular velocity (gyroscope signal), in time domain, Y-axis

- tBodyGyroMeanZ  
&nbsp;&nbsp; Mean body angular velocity (gyroscope signal), in time domain, Z-axis

- tBodyGyroJerkMeanX  
&nbsp;&nbsp; Mean body angular velocity Jerk signal, in time domain, X-axis

- tBodyGyroJerkMeanY  
&nbsp;&nbsp; Mean body angular velocity Jerk signal, in time domain, Y-axis

- tBodyGyroJerkMeanZ    
&nbsp;&nbsp; Mean body angular velocity Jerk signal, in time domain, Z-axis

- tBodyAccMagMean  
&nbsp;&nbsp; Mean body acceleration magnitude, time domain

- tGravityAccMagMean  
&nbsp;&nbsp; Mean gravity acceleration magnitude, time domain

- tBodyAccJerkMagMean  
&nbsp;&nbsp; Mean body acceleration Jerk signal magnitude, time domain

- tBodyGyroMagMean  
&nbsp;&nbsp; Mean body angular velocity magnitude, time domain

- tBodyGyroJerkMagMean  
&nbsp;&nbsp; Mean body angular velocity Jerk signal magnitude, time domain

- fBodyAccMeanX  
&nbsp;&nbsp; Mean body acceleration, frequency domain, X-axis

- fBodyAccMeanY  
&nbsp;&nbsp; Mean body acceleration, frequency domain, Y-axis

- fBodyAccMeanZ  
&nbsp;&nbsp; Mean body acceleration, frequency domain, Z-axis

- fBodyAccMeanFreqX  
&nbsp;&nbsp; Mean frequency body acceleration, frequency domain, X-axis

- fBodyAccMeanFreqY  
&nbsp;&nbsp; Mean frequency body acceleration, frequency domain, Y-axis

- fBodyAccMeanFreqZ  
&nbsp;&nbsp; Mean frequency body acceleration, frequency domain, Z-axis

- fBodyAccJerkMeanX  
&nbsp;&nbsp; Mean body acceleration Jerk signal, frequency domain, X-axis

- fBodyAccJerkMeanY  
&nbsp;&nbsp; Mean body acceleration Jerk signal, frequency domain, Y-axis

- fBodyAccJerkMeanZ  
&nbsp;&nbsp; Mean body acceleration Jerk signal, frequency domain, Z-axis

- fBodyAccJerkMeanFreqX  
&nbsp;&nbsp; Mean frequency body acceleration Jerk signal, frequency domain, X-axis

- fBodyAccJerkMeanFreqY  
&nbsp;&nbsp; Mean frequency body acceleration Jerk signal, frequency domain, Y-axis

- fBodyAccJerkMeanFreqZ   
&nbsp;&nbsp; Mean frequency body acceleration Jerk signal, frequency domain, Z-axis

- fBodyGyroMeanX  
&nbsp;&nbsp; Mean body angular velocity, frequency domain, X-axis

- fBodyGyroMeanY  
&nbsp;&nbsp; Mean body angular velocity, frequency domain, Y-axis

- fBodyGyroMeanZ  
&nbsp;&nbsp; Mean body angular velocity, frequency domain, Z-axis

- fBodyGyroMeanFreqX  
&nbsp;&nbsp; Mean frequency body angular velocity, frequency domain, X-axis

- fBodyGyroMeanFreqY  
&nbsp;&nbsp; Mean frequency body angular velocity, frequency domain, Y-axis

- fBodyGyroMeanFreqZ    
&nbsp;&nbsp; Mean frequency body angular velocity, frequency domain, Z-axis

- fBodyAccMagMean  
&nbsp;&nbsp; Mean body acceleration magnitude, frequency domain

- fBodyAccMagMeanFreq  
&nbsp;&nbsp; Mean frequency body acceleration magnitude, frequency domain

- fBodyBodyAccJerkMagMean  
&nbsp;&nbsp; Mean body acceleration Jerk signal magnitude, frequency domain

- fBodyBodyAccJerkMagMeanFreq  
&nbsp;&nbsp; Mean frequency body acceleration Jerk signal magnitude, frequency domain

- fBodyBodyGyroMagMean  
&nbsp;&nbsp; Mean body angular velocity magnitude, frequency domain

- fBodyBodyGyroMagMeanFreq  
&nbsp;&nbsp; Mean frequency body angular velocity magnitude, frequency domain

- fBodyBodyGyroJerkMagMean  
&nbsp;&nbsp; Mean body angular velocity Jerk signal magnitude, frequency domain

- fBodyBodyGyroJerkMagMeanFreq  
&nbsp;&nbsp; Mean frequency body angular velocity Jerk signal magnitude, frequency domain

- tBodyAccStdX  
&nbsp;&nbsp; Standard deviation of body acceleration, time domain, X-axis

- tBodyAccStdY   
&nbsp;&nbsp; Standard deviation of body acceleration, time domain, Y-axis

- tBodyAccStdZ  
&nbsp;&nbsp; Standard deviation of body acceleration, time domain, Z-axis

- tGravityAccStdX  
&nbsp;&nbsp; Standard deviation of gravity acceleration, time domain, X-axis

- tGravityAccStdY  
&nbsp;&nbsp; Standard deviation of gravity acceleration, time domain, Y-axis

- tGravityAccStdZ  
&nbsp;&nbsp; Standard deviation of gravity acceleration, time domain, Z-axis

- tBodyAccJerkStdX  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, time domain, X-axis

- tBodyAccJerkStdY  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, time domain, Y-axis

- tBodyAccJerkStdZ  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, time domain, Z-axis

- tBodyGyroStdX  
&nbsp;&nbsp; Standard deviation of body angular velocity, time domain, X-axis

- tBodyGyroStdY  
&nbsp;&nbsp; Standard deviation of body angular velocity, time domain, Y-axis

- tBodyGyroStdZ  
&nbsp;&nbsp; Standard deviation of body angular velocity, time domain, Z-axis

- tBodyGyroJerkStdX  
&nbsp;&nbsp; Standard deviation of body angular velocity Jerk signal, time domain, X-axis

- tBodyGyroJerkStdY  
&nbsp;&nbsp; Standard deviation of body angular velocity Jerk signal, time domain, Y-axis

- tBodyGyroJerkStdZ  
&nbsp;&nbsp; Standard deviation of body angular velocity Jerk signal, time domain, Z-axis

- tBodyAccMagStd  
&nbsp;&nbsp; Standard deviation of body acceleration magnitude, time domain

- tGravityAccMagStd  
&nbsp;&nbsp; Standard deviation of gravity acceleration magnitude, time domain

- tBodyAccJerkMagStd  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal magnitude, time domain

- tBodyGyroMagStd  
&nbsp;&nbsp; Standard deviation of body angular velocity magnitude, time domain

- tBodyGyroJerkMagStd  
&nbsp;&nbsp; Standard deviation of body angular velocity Jerk signal magnitude, time domain

- fBodyAccStdX  
&nbsp;&nbsp; Standard deviation of body acceleration, frequency domain, X-axis

- fBodyAccStdY  
&nbsp;&nbsp; Standard deviation of body acceleration, frequency domain, Y-axis

- fBodyAccStdZ  
&nbsp;&nbsp; Standard deviation of body acceleration, frequency domain, Z-axis

- fBodyAccJerkStdX  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, frequency domain, X-axis

- fBodyAccJerkStdY  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, frequency domain, Y-axis

- fBodyAccJerkStdZ  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal, frequency domain, Z-axis

- fBodyGyroStdX  
&nbsp;&nbsp; Standard deviation of body angular velocity, frequency domain, X-axis

- fBodyGyroStdY  
&nbsp;&nbsp; Standard deviation of body angular velocity, frequency domain, Y-axis

- fBodyGyroStdZ  
&nbsp;&nbsp; Standard deviation of body angular velocity, frequency domain, Z-axis

- fBodyAccMagStd  
&nbsp;&nbsp; Standard deviation of body acceleration magnitude, frequency domain

- fBodyBodyAccJerkMagStd  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal magnitude, frequency domain

- fBodyBodyGyroMagStd  
&nbsp;&nbsp; Standard deviation of body angular velocity magnitude, frequency domain

- fBodyBodyGyroJerkMagStd  
&nbsp;&nbsp; Standard deviation of body acceleration Jerk signal magnitude, frequency domain


NOTE:  
All measurements features have normalized values, bounded within [-1,1]. 
