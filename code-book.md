# Codebook

This Code Book summarizes the variables in `tidy.txt`.

## Identifiers

* `Subject` - ID of the test subject
* `Activity` - activities which were performed by subjects
* `Set` - identifying whether the observation was taken from the _test_ or _training_ set

### Activity levels

* `1 WALKING`
* `2 WALKING_UPSTAIRS`
* `3 WALKING_DOWNSTAIRS`
* `4 SITTING`
* `5 STANDING`
* `6 LAYING


## Measurements

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

`Mean`: Mean value
`STD`: Standard deviation

### List of measurement variables

* `tBodyAcc_Mean_X`               
* `tBodyAcc_Mean_Y`
* `tBodyAcc_Mean_Z`
* `tBodyAcc_STD_X`
* `tBodyAcc_STD_Y`                
* `tBodyAcc_STD_Z`
* `tGravityAcc_Mean_X`
* `tGravityAcc_Mean_Y`
* `tGravityAcc_Mean_Z`            
* `tGravityAcc_STD_X`
* `tGravityAcc_STD_Y`
* `tGravityAcc_STD_Z`
* `tBodyAccJerk_Mean_X`           
* `tBodyAccJerk_Mean_Y`
* `tBodyAccJerk_Mean_Z`
* `tBodyAccJerk_STD_X`
* `tBodyAccJerk_STD_Y`            
* `tBodyAccJerk_STD_Z`
* `tBodyGyro_Mean_X`
* `tBodyGyro_Mean_Y`
* `tBodyGyro_Mean_Z`              
* `tBodyGyro_STD_X`
* `tBodyGyro_STD_Y`
* `tBodyGyro_STD_Z`
* `tBodyGyroJerk_Mean_X`          
* `tBodyGyroJerk_Mean_Y`
* `tBodyGyroJerk_Mean_Z`
* `tBodyGyroJerk_STD_X`
* `tBodyGyroJerk_STD_Y`           
* `tBodyGyroJerk_STD_Z`
* `tBodyAccMag_Mean`
* `tBodyAccMag_STD`
* `tGravityAccMag_Mean`           
* `tGravityAccMag_STD`
* `tBodyAccJerkMag_Mean`
* `tBodyAccJerkMag_STD`
* `tBodyGyroMag_Mean`             
* `tBodyGyroMag_STD`
* `tBodyGyroJerkMag_Mean`
* `tBodyGyroJerkMag_STD`
* `fBodyAcc_Mean_X`               
* `fBodyAcc_Mean_Y`
* `fBodyAcc_Mean_Z`
* `fBodyAcc_STD_X`
* `fBodyAcc_STD_Y`                
* `fBodyAcc_STD_Z`
* `fBodyAcc_Mean_FreqX`
* `fBodyAcc_Mean_FreqY`
* `fBodyAcc_Mean_FreqZ`           
* `fBodyAccJerk_Mean_X`
* `fBodyAccJerk_Mean_Y`
* `fBodyAccJerk_Mean_Z`
* `fBodyAccJerk_STD_X`            
* `fBodyAccJerk_STD_Y`
* `fBodyAccJerk_STD_Z`
* `fBodyAccJerk_Mean_FreqX`
* `fBodyAccJerk_Mean_FreqY`       
* `fBodyAccJerk_Mean_FreqZ`
* `fBodyGyro_Mean_X`
* `fBodyGyro_Mean_Y`
* `fBodyGyro_Mean_Z`              
* `fBodyGyro_STD_X`
* `fBodyGyro_STD_Y`
* `fBodyGyro_STD_Z`
* `fBodyGyro_Mean_FreqX`          
* `fBodyGyro_Mean_FreqY`
* `fBodyGyro_Mean_FreqZ`
* `fBodyAccMag_Mean`
* `fBodyAccMag_STD`               
* `fBodyAccMag_Mean_Freq`
* `fBodyBodyAccJerkMag_Mean`
* `fBodyBodyAccJerkMag_STD`
* `fBodyBodyAccJerkMag_Mean_Freq` 
* `fBodyBodyGyroMag_Mean`
* `fBodyBodyGyroMag_STD`
* `fBodyBodyGyroMag_Mean_Freq`
* `fBodyBodyGyroJerkMag_Mean`     
* `fBodyBodyGyroJerkMag_STD`
* `fBodyBodyGyroJerkMag_Mean_Freq`