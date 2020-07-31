### 1. Raw Data Info

- Abstract <br/>
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

- Source <br/>
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws <br/>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### 2. Summary of the processed data (`tidydata.csv`)

- Data Sets I used
  - ./train/X_train.txt
  - ./train/y_train.txt
  - ./train/subject_train.txt
  - ./test/X_test.txt
  - ./test/y_test.txt
  - ./test/subject_test.txt
 
- Variables and data I used
<br> I extracted the data which is related to the mean and standard deviation for each measurement, and merged all data sets above into one data set. 

- Variables of the processed data set.

|  Name  |  Description  |
| ---- | ---- |
|  activityName  |  Each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  |
|  subject  | Subjects who participated in training or test data sets. (1-30)  |
| OTHER VARIABLES| Domain Signal (time or freq) <br> The sensor signals {(Body or Gravity) and (Accelerometer or Gyroscope) or Jerk or Magnitude} <br> Signals (mean or std) <br> 3-axial (X, Y or Z.) |

```
[1] "activityName"                                   
[2] "subject"                                        
[3] "timeBodyAccelerometer-mean-X"                   
[4] "timeBodyAccelerometer-mean-Y"                   
[5] "timeBodyAccelerometer-mean-Z"                   
[6] "timeBodyAccelerometer-std-X"                    
[7] "timeBodyAccelerometer-std-Y"                    
[8] "timeBodyAccelerometer-std-Z"                    
[9] "timeGravityAccelerometer-mean-X"                
[10] "timeGravityAccelerometer-mean-Y"                
[11] "timeGravityAccelerometer-mean-Z"                
[12] "timeGravityAccelerometer-std-X"                 
[13] "timeGravityAccelerometer-std-Y"                 
[14] "timeGravityAccelerometer-std-Z"                 
[15] "timeBodyAccelerometerJerk-mean-X"               
[16] "timeBodyAccelerometerJerk-mean-Y"               
[17] "timeBodyAccelerometerJerk-mean-Z"               
[18] "timeBodyAccelerometerJerk-std-X"                
[19] "timeBodyAccelerometerJerk-std-Y"                
[20] "timeBodyAccelerometerJerk-std-Z"                
[21] "timeBodyGyroscope-mean-X"                       
[22] "timeBodyGyroscope-mean-Y"                       
[23] "timeBodyGyroscope-mean-Z"                       
[24] "timeBodyGyroscope-std-X"                        
[25] "timeBodyGyroscope-std-Y"                        
[26] "timeBodyGyroscope-std-Z"                        
[27] "timeBodyGyroscopeJerk-mean-X"                   
[28] "timeBodyGyroscopeJerk-mean-Y"                   
[29] "timeBodyGyroscopeJerk-mean-Z"                   
[30] "timeBodyGyroscopeJerk-std-X"                    
[31] "timeBodyGyroscopeJerk-std-Y"                    
[32] "timeBodyGyroscopeJerk-std-Z"                    
[33] "timeBodyAccelerometerMagnitude-mean"            
[34] "timeBodyAccelerometerMagnitude-std"             
[35] "timeGravityAccelerometerMagnitude-mean"         
[36] "timeGravityAccelerometerMagnitude-std"          
[37] "timeBodyAccelerometerJerkMagnitude-mean"        
[38] "timeBodyAccelerometerJerkMagnitude-std"         
[39] "timeBodyGyroscopeMagnitude-mean"                
[40] "timeBodyGyroscopeMagnitude-std"                 
[41] "timeBodyGyroscopeJerkMagnitude-mean"            
[42] "timeBodyGyroscopeJerkMagnitude-std"             
[43] "freqBodyAccelerometer-mean-X"                   
[44] "freqBodyAccelerometer-mean-Y"                   
[45] "freqBodyAccelerometer-mean-Z"                   
[46] "freqBodyAccelerometer-std-X"                    
[47] "freqBodyAccelerometer-std-Y"                    
[48] "freqBodyAccelerometer-std-Z"                    
[49] "freqBodyAccelerometer-meanFreq-X"               
[50] "freqBodyAccelerometer-meanFreq-Y"               
[51] "freqBodyAccelerometer-meanFreq-Z"               
[52] "freqBodyAccelerometerJerk-mean-X"               
[53] "freqBodyAccelerometerJerk-mean-Y"               
[54] "freqBodyAccelerometerJerk-mean-Z"               
[55] "freqBodyAccelerometerJerk-std-X"                
[56] "freqBodyAccelerometerJerk-std-Y"                
[57] "freqBodyAccelerometerJerk-std-Z"                
[58] "freqBodyAccelerometerJerk-meanFreq-X"           
[59] "freqBodyAccelerometerJerk-meanFreq-Y"           
[60] "freqBodyAccelerometerJerk-meanFreq-Z"           
[61] "freqBodyGyroscope-mean-X"                       
[62] "freqBodyGyroscope-mean-Y"                       
[63] "freqBodyGyroscope-mean-Z"                       
[64] "freqBodyGyroscope-std-X"                        
[65] "freqBodyGyroscope-std-Y"                        
[66] "freqBodyGyroscope-std-Z"                        
[67] "freqBodyGyroscope-meanFreq-X"                   
[68] "freqBodyGyroscope-meanFreq-Y"                   
[69] "freqBodyGyroscope-meanFreq-Z"                   
[70] "freqBodyAccelerometerMagnitude-mean"            
[71] "freqBodyAccelerometerMagnitude-std"             
[72] "freqBodyAccelerometerMagnitude-meanFreq"        
[73] "freqBodyBodyAccelerometerJerkMagnitude-mean"    
[74] "freqBodyBodyAccelerometerJerkMagnitude-std"     
[75] "freqBodyBodyAccelerometerJerkMagnitude-meanFreq"
[76] "freqBodyBodyGyroscopeMagnitude-mean"            
[77] "freqBodyBodyGyroscopeMagnitude-std"             
[78] "freqBodyBodyGyroscopeMagnitude-meanFreq"        
[79] "freqBodyBodyGyroscopeJerkMagnitude-mean"        
[80] "freqBodyBodyGyroscopeJerkMagnitude-std"         
[81] "freqBodyBodyGyroscopeJerkMagnitude-meanFreq"
```

- Summary
<br> Values in `tidydata.csv` represent the average of each variable for each activity and each subject.


### 3. Experiment Design

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

You can find more information from [README.md](https://github.com/hirkame/Getting-and-Cleaning-Data-Course-Project/blob/master/README.md)
